; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rxe_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"already configured on %s\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"failed to add %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.net_device*)* @rxe_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_newlink(i8* %0, %struct.net_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rxe_dev*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device* %7)
  store %struct.rxe_dev* %8, %struct.rxe_dev** %5, align 8
  %9 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %10 = icmp ne %struct.rxe_dev* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.rxe_dev*, %struct.rxe_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %12, i32 0, i32 0
  %14 = call i32 @ib_device_put(i32* %13)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EEXIST, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @rxe_net_add(i8* %22, %struct.net_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %27, %11
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.rxe_dev* @rxe_get_dev_from_net(%struct.net_device*) #1

declare dso_local i32 @ib_device_put(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rxe_net_add(i8*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
