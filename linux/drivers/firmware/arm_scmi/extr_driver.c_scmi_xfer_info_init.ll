; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_info = type { %struct.scmi_xfers_info, %struct.scmi_desc*, %struct.device* }
%struct.scmi_xfers_info = type { i32, %struct.scmi_xfer*, i8* }
%struct.scmi_xfer = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.scmi_desc = type { i32, i32 }
%struct.device = type { i32 }

@MSG_TOKEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Maximum message of %d exceeds supported %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_info*)* @scmi_xfer_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_xfer_info_init(%struct.scmi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_xfer*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scmi_desc*, align 8
  %8 = alloca %struct.scmi_xfers_info*, align 8
  store %struct.scmi_info* %0, %struct.scmi_info** %3, align 8
  %9 = load %struct.scmi_info*, %struct.scmi_info** %3, align 8
  %10 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.scmi_info*, %struct.scmi_info** %3, align 8
  %13 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %12, i32 0, i32 1
  %14 = load %struct.scmi_desc*, %struct.scmi_desc** %13, align 8
  store %struct.scmi_desc* %14, %struct.scmi_desc** %7, align 8
  %15 = load %struct.scmi_info*, %struct.scmi_info** %3, align 8
  %16 = getelementptr inbounds %struct.scmi_info, %struct.scmi_info* %15, i32 0, i32 0
  store %struct.scmi_xfers_info* %16, %struct.scmi_xfers_info** %8, align 8
  %17 = load %struct.scmi_desc*, %struct.scmi_desc** %7, align 8
  %18 = getelementptr inbounds %struct.scmi_desc, %struct.scmi_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MSG_TOKEN_MAX, align 4
  %21 = icmp sge i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.scmi_desc*, %struct.scmi_desc** %7, align 8
  %28 = getelementptr inbounds %struct.scmi_desc, %struct.scmi_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MSG_TOKEN_MAX, align 4
  %31 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %116

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load %struct.scmi_desc*, %struct.scmi_desc** %7, align 8
  %37 = getelementptr inbounds %struct.scmi_desc, %struct.scmi_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kcalloc(%struct.device* %35, i32 %38, i32 24, i32 %39)
  %41 = bitcast i8* %40 to %struct.scmi_xfer*
  %42 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %8, align 8
  %43 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %42, i32 0, i32 1
  store %struct.scmi_xfer* %41, %struct.scmi_xfer** %43, align 8
  %44 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %8, align 8
  %45 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %44, i32 0, i32 1
  %46 = load %struct.scmi_xfer*, %struct.scmi_xfer** %45, align 8
  %47 = icmp ne %struct.scmi_xfer* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %116

51:                                               ; preds = %34
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.scmi_desc*, %struct.scmi_desc** %7, align 8
  %54 = getelementptr inbounds %struct.scmi_desc, %struct.scmi_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BITS_TO_LONGS(i32 %55)
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @devm_kcalloc(%struct.device* %52, i32 %56, i32 8, i32 %57)
  %59 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %8, align 8
  %60 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %8, align 8
  %62 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %116

68:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  %69 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %8, align 8
  %70 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %69, i32 0, i32 1
  %71 = load %struct.scmi_xfer*, %struct.scmi_xfer** %70, align 8
  store %struct.scmi_xfer* %71, %struct.scmi_xfer** %5, align 8
  br label %72

72:                                               ; preds = %107, %68
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.scmi_desc*, %struct.scmi_desc** %7, align 8
  %75 = getelementptr inbounds %struct.scmi_desc, %struct.scmi_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %72
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load %struct.scmi_desc*, %struct.scmi_desc** %7, align 8
  %81 = getelementptr inbounds %struct.scmi_desc, %struct.scmi_desc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @devm_kcalloc(%struct.device* %79, i32 4, i32 %82, i32 %83)
  %85 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %86 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %89 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %78
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %116

96:                                               ; preds = %78
  %97 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %98 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %102 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %105 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %104, i32 0, i32 0
  %106 = call i32 @init_completion(i32* %105)
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  %110 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %111 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %110, i32 1
  store %struct.scmi_xfer* %111, %struct.scmi_xfer** %5, align 8
  br label %72

112:                                              ; preds = %72
  %113 = load %struct.scmi_xfers_info*, %struct.scmi_xfers_info** %8, align 8
  %114 = getelementptr inbounds %struct.scmi_xfers_info, %struct.scmi_xfers_info* %113, i32 0, i32 0
  %115 = call i32 @spin_lock_init(i32* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %93, %65, %48, %25
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
