; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_create_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_scx200_acb.c_scx200_create_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scx200_acb_iface = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"can't allocate io 0x%lx-0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scx200_acb_iface* (i8*, i64, i32, %struct.device*)* @scx200_create_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scx200_acb_iface* @scx200_create_dev(i8* %0, i64 %1, i32 %2, %struct.device* %3) #0 {
  %5 = alloca %struct.scx200_acb_iface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.scx200_acb_iface*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.device* %3, %struct.device** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.scx200_acb_iface* @scx200_create_iface(i8* %12, %struct.device* %13, i32 %14)
  store %struct.scx200_acb_iface* %15, %struct.scx200_acb_iface** %10, align 8
  %16 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %10, align 8
  %17 = icmp eq %struct.scx200_acb_iface* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.scx200_acb_iface* null, %struct.scx200_acb_iface** %5, align 8
  br label %49

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %10, align 8
  %22 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @request_region(i64 %20, i32 8, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 8
  %31 = sub i64 %30, 1
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %31)
  br label %46

33:                                               ; preds = %19
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %10, align 8
  %36 = getelementptr inbounds %struct.scx200_acb_iface, %struct.scx200_acb_iface* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %10, align 8
  %38 = call i32 @scx200_acb_create(%struct.scx200_acb_iface* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %10, align 8
  store %struct.scx200_acb_iface* %42, %struct.scx200_acb_iface** %5, align 8
  br label %49

43:                                               ; preds = %33
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @release_region(i64 %44, i32 8)
  br label %46

46:                                               ; preds = %43, %27
  %47 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %10, align 8
  %48 = call i32 @kfree(%struct.scx200_acb_iface* %47)
  store %struct.scx200_acb_iface* null, %struct.scx200_acb_iface** %5, align 8
  br label %49

49:                                               ; preds = %46, %41, %18
  %50 = load %struct.scx200_acb_iface*, %struct.scx200_acb_iface** %5, align 8
  ret %struct.scx200_acb_iface* %50
}

declare dso_local %struct.scx200_acb_iface* @scx200_create_iface(i8*, %struct.device*, i32) #1

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @scx200_acb_create(%struct.scx200_acb_iface*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @kfree(%struct.scx200_acb_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
