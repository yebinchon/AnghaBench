; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_check_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_check_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.alg_props*** }
%struct.alg_props = type { i64, i32 }
%struct.device = type { i32 }

@nx_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NX_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"bogus sglen/databytelen for %u/%u/%u: %u/%u (ignored)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64, i64, i32)* @nx_check_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_check_prop(%struct.device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.alg_props*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.alg_props***, %struct.alg_props**** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nx_driver, i32 0, i32 0, i32 0), align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds %struct.alg_props**, %struct.alg_props*** %11, i64 %12
  %14 = load %struct.alg_props**, %struct.alg_props*** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.alg_props*, %struct.alg_props** %14, i64 %15
  %17 = load %struct.alg_props*, %struct.alg_props** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.alg_props, %struct.alg_props* %17, i64 %19
  store %struct.alg_props* %20, %struct.alg_props** %10, align 8
  %21 = load %struct.alg_props*, %struct.alg_props** %10, align 8
  %22 = getelementptr inbounds %struct.alg_props, %struct.alg_props* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.alg_props*, %struct.alg_props** %10, align 8
  %27 = getelementptr inbounds %struct.alg_props, %struct.alg_props* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NX_PAGE_SIZE, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25, %4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = icmp ne %struct.device* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.alg_props*, %struct.alg_props** %10, align 8
  %40 = getelementptr inbounds %struct.alg_props, %struct.alg_props* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.alg_props*, %struct.alg_props** %10, align 8
  %43 = getelementptr inbounds %struct.alg_props, %struct.alg_props* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i32 %38, i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %34, %31
  store i32 0, i32* %5, align 4
  br label %48

47:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
