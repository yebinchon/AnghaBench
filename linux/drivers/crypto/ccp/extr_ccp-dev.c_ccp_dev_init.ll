; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { %struct.ccp_device*, i64, i32, %struct.TYPE_3__*, %struct.device* }
%struct.ccp_device = type { %struct.ccp_vdata*, i64, i32, i64 }
%struct.ccp_vdata = type { %struct.TYPE_4__*, i32 (%struct.ccp_device*)*, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ccp_device*)* }
%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }

@dev_count = common dso_local global i32 0, align 4
@max_devs = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@nqueues = common dso_local global i64 0, align 8
@MAX_HW_QUEUES = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing driver data\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ccp enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ccp initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_dev_init(%struct.sp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ccp_device*, align 8
  %6 = alloca i32, align 4
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %7 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %8 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = call i64 @atomic_inc_return(i32* @dev_count)
  %11 = load i64, i64* @max_devs, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %118

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %18 = call %struct.ccp_device* @ccp_alloc_struct(%struct.sp_device* %17)
  store %struct.ccp_device* %18, %struct.ccp_device** %5, align 8
  %19 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %20 = icmp ne %struct.ccp_device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %112

22:                                               ; preds = %14
  %23 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %24 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %25 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %24, i32 0, i32 0
  store %struct.ccp_device* %23, %struct.ccp_device** %25, align 8
  %26 = load i64, i64* @nqueues, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i64, i64* @nqueues, align 8
  %30 = load i64, i64* @MAX_HW_QUEUES, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %22
  %33 = load i64, i64* @MAX_HW_QUEUES, align 8
  %34 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %35 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load i64, i64* @nqueues, align 8
  %38 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %39 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %42 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ccp_vdata*
  %47 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %48 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %47, i32 0, i32 0
  store %struct.ccp_vdata* %46, %struct.ccp_vdata** %48, align 8
  %49 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %50 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %49, i32 0, i32 0
  %51 = load %struct.ccp_vdata*, %struct.ccp_vdata** %50, align 8
  %52 = icmp ne %struct.ccp_vdata* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %55 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %54, i32 0, i32 0
  %56 = load %struct.ccp_vdata*, %struct.ccp_vdata** %55, align 8
  %57 = getelementptr inbounds %struct.ccp_vdata, %struct.ccp_vdata* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53, %40
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %112

65:                                               ; preds = %53
  %66 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %67 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %70 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %72 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %75 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %74, i32 0, i32 0
  %76 = load %struct.ccp_vdata*, %struct.ccp_vdata** %75, align 8
  %77 = getelementptr inbounds %struct.ccp_vdata, %struct.ccp_vdata* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %81 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %83 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %82, i32 0, i32 0
  %84 = load %struct.ccp_vdata*, %struct.ccp_vdata** %83, align 8
  %85 = getelementptr inbounds %struct.ccp_vdata, %struct.ccp_vdata* %84, i32 0, i32 1
  %86 = load i32 (%struct.ccp_device*)*, i32 (%struct.ccp_device*)** %85, align 8
  %87 = icmp ne i32 (%struct.ccp_device*)* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %65
  %89 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %90 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %89, i32 0, i32 0
  %91 = load %struct.ccp_vdata*, %struct.ccp_vdata** %90, align 8
  %92 = getelementptr inbounds %struct.ccp_vdata, %struct.ccp_vdata* %91, i32 0, i32 1
  %93 = load i32 (%struct.ccp_device*)*, i32 (%struct.ccp_device*)** %92, align 8
  %94 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %95 = call i32 %93(%struct.ccp_device* %94)
  br label %96

96:                                               ; preds = %88, %65
  %97 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %98 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %97, i32 0, i32 0
  %99 = load %struct.ccp_vdata*, %struct.ccp_vdata** %98, align 8
  %100 = getelementptr inbounds %struct.ccp_vdata, %struct.ccp_vdata* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32 (%struct.ccp_device*)*, i32 (%struct.ccp_device*)** %102, align 8
  %104 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %105 = call i32 %103(%struct.ccp_device* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %112

109:                                              ; preds = %96
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 @dev_notice(%struct.device* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %118

112:                                              ; preds = %108, %60, %21
  %113 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %114 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %113, i32 0, i32 0
  store %struct.ccp_device* null, %struct.ccp_device** %114, align 8
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_notice(%struct.device* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %112, %109, %13
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local %struct.ccp_device* @ccp_alloc_struct(%struct.sp_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
