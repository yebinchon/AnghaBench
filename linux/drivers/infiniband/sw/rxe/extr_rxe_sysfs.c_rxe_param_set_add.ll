; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_sysfs.c_rxe_param_set_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_sysfs.c_rxe_param_set_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }
%struct.net_device = type { i32 }
%struct.rxe_dev = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"add: invalid interface name\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"interface %s not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"already configured on %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rxe%d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"failed to add %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @rxe_param_set_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_param_set_add(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.rxe_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %13 = call i32 @sanitize_arg(i8* %11, i8* %12, i32 32)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %22 = call %struct.net_device* @dev_get_by_name(i32* @init_net, i8* %21)
  store %struct.net_device* %22, %struct.net_device** %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %20
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = call %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device* %31)
  store %struct.rxe_dev* %32, %struct.rxe_dev** %10, align 8
  %33 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %34 = icmp ne %struct.rxe_dev* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %37 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %36, i32 0, i32 0
  %38 = call i32 @ib_device_put(i32* %37)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %52

43:                                               ; preds = %30
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = call i32 @rxe_net_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.net_device* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %48, %35
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = call i32 @dev_put(%struct.net_device* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %25, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sanitize_arg(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.net_device* @dev_get_by_name(i32*, i8*) #1

declare dso_local %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device*) #1

declare dso_local i32 @ib_device_put(i32*) #1

declare dso_local i32 @rxe_net_add(i8*, %struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
