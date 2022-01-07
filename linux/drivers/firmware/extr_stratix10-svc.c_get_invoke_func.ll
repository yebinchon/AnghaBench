; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_get_invoke_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_get_invoke_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"missing \22method\22 property\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@svc_smccc_smc = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"hvc\00", align 1
@svc_smccc_hvc = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid \22method\22 property: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.device*)* @get_invoke_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_invoke_func(%struct.device* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @of_property_read_string(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32* @ERR_PTR(i32 %14)
  store i32* %15, i32** %2, align 8
  br label %35

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** @svc_smccc_smc, align 8
  store i32* %21, i32** %2, align 8
  br label %35

22:                                               ; preds = %16
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** @svc_smccc_hvc, align 8
  store i32* %27, i32** %2, align 8
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32* @ERR_PTR(i32 %33)
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %28, %26, %20, %10
  %36 = load i32*, i32** %2, align 8
  ret i32* %36
}

declare dso_local i64 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
