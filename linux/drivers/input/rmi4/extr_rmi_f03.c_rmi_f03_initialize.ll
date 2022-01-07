; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f03_data = type { i32, i32, %struct.rmi_function* }
%struct.rmi_function = type { %struct.TYPE_2__, i32, %struct.device }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@RMI_F03_DEVICE_COUNT = common dso_local global i32 0, align 4
@RMI_F03_BYTES_PER_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to read query register (%d).\0A\00", align 1
@RMI_F03_BYTES_PER_DEVICE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to read second set of query registers (%d).\0A\00", align 1
@RMI_F03_QUEUE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f03_data*)* @rmi_f03_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f03_initialize(%struct.f03_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f03_data*, align 8
  %4 = alloca %struct.rmi_function*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.f03_data* %0, %struct.f03_data** %3, align 8
  %13 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %14 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %13, i32 0, i32 2
  %15 = load %struct.rmi_function*, %struct.rmi_function** %14, align 8
  store %struct.rmi_function* %15, %struct.rmi_function** %4, align 8
  %16 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %17 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %16, i32 0, i32 2
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load i32, i32* @RMI_F03_DEVICE_COUNT, align 4
  %19 = load i32, i32* @RMI_F03_BYTES_PER_DEVICE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %25 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %28 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @rmi_read(i32 %26, i64 %30, i32* %8)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %89

39:                                               ; preds = %1
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RMI_F03_DEVICE_COUNT, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %44 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @RMI_F03_BYTES_PER_DEVICE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = load i32, i32* @RMI_F03_BYTES_PER_DEVICE, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %51 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ult i64 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %39
  %59 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %60 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %62 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %61, i32 0, i32 1
  store i32 7, i32* %62, align 4
  br label %88

63:                                               ; preds = %39
  %64 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %65 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %68 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @rmi_read_block(i32 %66, i64 %71, i32* %23, i64 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %89

81:                                               ; preds = %63
  %82 = getelementptr inbounds i32, i32* %23, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = load i32, i32* @RMI_F03_QUEUE_LENGTH, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %87 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %58
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %76, %34
  %90 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rmi_read(i32, i64, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @rmi_read_block(i32, i64, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
