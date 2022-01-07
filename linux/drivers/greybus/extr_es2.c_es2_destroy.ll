; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32*, i32, %struct.usb_device*, %struct.TYPE_2__, i32**, %struct.urb**, %struct.urb**, i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_2__ = type { i32**, %struct.urb** }
%struct.urb = type { i32 }

@NUM_CPORT_OUT_URB = common dso_local global i32 0, align 4
@NUM_ARPC_IN_URB = common dso_local global i32 0, align 4
@NUM_CPORT_IN_URB = common dso_local global i32 0, align 4
@ES2_CPORT_CDSI1 = common dso_local global i32 0, align 4
@ES2_CPORT_CDSI0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es2_ap_dev*)* @es2_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es2_destroy(%struct.es2_ap_dev* %0) #0 {
  %2 = alloca %struct.es2_ap_dev*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %2, align 8
  %6 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %7 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @debugfs_remove(i32 %8)
  %10 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %11 = call i32 @usb_log_disable(%struct.es2_ap_dev* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NUM_CPORT_OUT_URB, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %18 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %17, i32 0, i32 6
  %19 = load %struct.urb**, %struct.urb*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.urb*, %struct.urb** %19, i64 %21
  %23 = load %struct.urb*, %struct.urb** %22, align 8
  store %struct.urb* %23, %struct.urb** %4, align 8
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = call i32 @usb_kill_urb(%struct.urb* %24)
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = call i32 @usb_free_urb(%struct.urb* %26)
  %28 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %29 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %28, i32 0, i32 6
  %30 = load %struct.urb**, %struct.urb*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.urb*, %struct.urb** %30, i64 %32
  store %struct.urb* null, %struct.urb** %33, align 8
  %34 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %35 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %16
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NUM_ARPC_IN_URB, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %50 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %49, i32 0, i32 5
  %51 = load %struct.urb**, %struct.urb*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.urb*, %struct.urb** %51, i64 %53
  %55 = load %struct.urb*, %struct.urb** %54, align 8
  %56 = call i32 @usb_free_urb(%struct.urb* %55)
  %57 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %58 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %57, i32 0, i32 4
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %66 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %65, i32 0, i32 4
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %48
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %44

74:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @NUM_CPORT_IN_URB, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %81 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load %struct.urb**, %struct.urb*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.urb*, %struct.urb** %83, i64 %85
  %87 = load %struct.urb*, %struct.urb** %86, align 8
  %88 = call i32 @usb_free_urb(%struct.urb* %87)
  %89 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %90 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %99 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %79
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %75

108:                                              ; preds = %75
  %109 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %110 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ES2_CPORT_CDSI1, align 4
  %113 = call i32 @gb_hd_cport_release_reserved(i32 %111, i32 %112)
  %114 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %115 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ES2_CPORT_CDSI0, align 4
  %118 = call i32 @gb_hd_cport_release_reserved(i32 %116, i32 %117)
  %119 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %120 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %119, i32 0, i32 2
  %121 = load %struct.usb_device*, %struct.usb_device** %120, align 8
  store %struct.usb_device* %121, %struct.usb_device** %3, align 8
  %122 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %2, align 8
  %123 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @gb_hd_put(i32 %124)
  %126 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %127 = call i32 @usb_put_dev(%struct.usb_device* %126)
  ret void
}

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @usb_log_disable(%struct.es2_ap_dev*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @gb_hd_cport_release_reserved(i32, i32) #1

declare dso_local i32 @gb_hd_put(i32) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
