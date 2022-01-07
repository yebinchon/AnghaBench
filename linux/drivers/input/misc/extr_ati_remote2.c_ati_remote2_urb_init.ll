; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_urb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ati_remote2.c_ati_remote2_urb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ati_remote2 = type { %struct.TYPE_5__**, i32*, %struct.TYPE_4__**, i32*, %struct.usb_device* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ati_remote2_complete_key = common dso_local global i32 0, align 4
@ati_remote2_complete_mouse = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ati_remote2*)* @ati_remote2_urb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote2_urb_init(%struct.ati_remote2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ati_remote2*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ati_remote2* %0, %struct.ati_remote2** %3, align 8
  %8 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %9 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %8, i32 0, i32 4
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %147, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %150

14:                                               ; preds = %11
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %18 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @usb_alloc_coherent(%struct.usb_device* %15, i32 4, i32 %16, i32* %22)
  %24 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %25 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  %30 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %31 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %14
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %151

41:                                               ; preds = %14
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.TYPE_5__* @usb_alloc_urb(i32 0, i32 %42)
  %44 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %45 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %48
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %51 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %151

61:                                               ; preds = %41
  %62 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %63 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %64 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_rcvintpipe(%struct.usb_device* %62, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @usb_pipeout(i32 %75)
  %77 = call i32 @usb_maxpacket(%struct.usb_device* %73, i32 %74, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 4
  br i1 %79, label %80, label %81

80:                                               ; preds = %61
  br label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ 4, %80 ], [ %82, %81 ]
  store i32 %84, i32* %7, align 4
  %85 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %86 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %95 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %83
  %105 = load i32, i32* @ati_remote2_complete_key, align 4
  br label %108

106:                                              ; preds = %83
  %107 = load i32, i32* @ati_remote2_complete_mouse, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %111 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %112 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @usb_fill_int_urb(%struct.TYPE_5__* %91, %struct.usb_device* %92, i32 %93, i32 %100, i32 %101, i32 %109, %struct.ati_remote2* %110, i32 %119)
  %121 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %122 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %129 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %130, i64 %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32 %127, i32* %135, align 4
  %136 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %137 = load %struct.ati_remote2*, %struct.ati_remote2** %3, align 8
  %138 = getelementptr inbounds %struct.ati_remote2, %struct.ati_remote2* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %139, i64 %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %136
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %108
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %11

150:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %58, %38
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_5__*, %struct.usb_device*, i32, i32, i32, i32, %struct.ati_remote2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
