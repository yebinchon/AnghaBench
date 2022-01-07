; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_alloc_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_alloc_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.sp_device*, %struct.device* }
%struct.device = type { i32 }
%struct.sp_device = type { i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KSB_COUNT = common dso_local global i32 0, align 4
@MAX_CCP_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ccp-%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ccp-%u-rng\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ccp_device* @ccp_alloc_struct(%struct.sp_device* %0) #0 {
  %2 = alloca %struct.ccp_device*, align 8
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ccp_device*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %6 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %7 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ccp_device* @devm_kzalloc(%struct.device* %9, i32 72, i32 %10)
  store %struct.ccp_device* %11, %struct.ccp_device** %5, align 8
  %12 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %13 = icmp ne %struct.ccp_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.ccp_device* null, %struct.ccp_device** %2, align 8
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %18 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %17, i32 0, i32 13
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %20 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %21 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %20, i32 0, i32 12
  store %struct.sp_device* %19, %struct.sp_device** %21, align 8
  %22 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %23 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %26 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %28 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %27, i32 0, i32 10
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %31 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %30, i32 0, i32 9
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %34 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %33, i32 0, i32 8
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %37 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %36, i32 0, i32 7
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %40 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %39, i32 0, i32 6
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load i32, i32* @KSB_COUNT, align 4
  %43 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %44 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %46 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %48 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %47, i32 0, i32 3
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %51 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %50, i32 0, i32 2
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %54 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX_CCP_NAME_LEN, align 4
  %57 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %58 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snprintf(i32 %55, i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  %62 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MAX_CCP_NAME_LEN, align 4
  %65 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %66 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @snprintf(i32 %63, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.ccp_device*, %struct.ccp_device** %5, align 8
  store %struct.ccp_device* %69, %struct.ccp_device** %2, align 8
  br label %70

70:                                               ; preds = %15, %14
  %71 = load %struct.ccp_device*, %struct.ccp_device** %2, align 8
  ret %struct.ccp_device* %71
}

declare dso_local %struct.ccp_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
