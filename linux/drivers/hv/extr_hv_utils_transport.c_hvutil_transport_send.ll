; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_utils_transport.c_hvutil_transport_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_utils_transport.c_hvutil_transport_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvutil_transport = type { i64, i32, void (...)*, i32, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cn_msg = type { i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@HVUTIL_TRANSPORT_INIT = common dso_local global i64 0, align 8
@HVUTIL_TRANSPORT_DESTROY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HVUTIL_TRANSPORT_NETLINK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HVUTIL_TRANSPORT_CHARDEV = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvutil_transport_send(%struct.hvutil_transport* %0, i8* %1, i32 %2, void ()* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hvutil_transport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void ()*, align 8
  %10 = alloca %struct.cn_msg*, align 8
  %11 = alloca i32, align 4
  store %struct.hvutil_transport* %0, %struct.hvutil_transport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store void ()* %3, void ()** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %13 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HVUTIL_TRANSPORT_INIT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %19 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HVUTIL_TRANSPORT_DESTROY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %137

26:                                               ; preds = %17
  %27 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %28 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HVUTIL_TRANSPORT_NETLINK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 24, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i8* @kzalloc(i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.cn_msg*
  store %struct.cn_msg* %39, %struct.cn_msg** %10, align 8
  %40 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %41 = icmp ne %struct.cn_msg* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %137

45:                                               ; preds = %32
  %46 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %47 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %51 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %54 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %58 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %62 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %64 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @memcpy(i8* %65, i8* %66, i32 %67)
  %69 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i32 @cn_netlink_send(%struct.cn_msg* %69, i32 0, i32 0, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %73 = call i32 @kfree(%struct.cn_msg* %72)
  %74 = load void ()*, void ()** %9, align 8
  %75 = icmp ne void ()* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %45
  %77 = load void ()*, void ()** %9, align 8
  call void %77()
  br label %78

78:                                               ; preds = %76, %45
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %137

80:                                               ; preds = %26
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %83 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %82, i32 0, i32 3
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %86 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HVUTIL_TRANSPORT_CHARDEV, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %11, align 4
  br label %132

93:                                               ; preds = %81
  %94 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %95 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %94, i32 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EFAULT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %11, align 4
  br label %132

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @kzalloc(i32 %102, i32 %103)
  %105 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %106 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %108 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %128

111:                                              ; preds = %101
  %112 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %113 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @memcpy(i8* %114, i8* %115, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %120 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load void ()*, void ()** %9, align 8
  %122 = bitcast void ()* %121 to void (...)*
  %123 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %124 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %123, i32 0, i32 2
  store void (...)* %122, void (...)** %124, align 8
  %125 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %126 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %125, i32 0, i32 4
  %127 = call i32 @wake_up_interruptible(i32* %126)
  br label %131

128:                                              ; preds = %101
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %128, %111
  br label %132

132:                                              ; preds = %131, %98, %90
  %133 = load %struct.hvutil_transport*, %struct.hvutil_transport** %6, align 8
  %134 = getelementptr inbounds %struct.hvutil_transport, %struct.hvutil_transport* %133, i32 0, i32 3
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %132, %78, %42, %23
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cn_netlink_send(%struct.cn_msg*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.cn_msg*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
