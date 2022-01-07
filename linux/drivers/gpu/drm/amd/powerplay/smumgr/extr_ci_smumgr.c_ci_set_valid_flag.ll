; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_set_valid_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_set_valid_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_mc_reg_table = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_mc_reg_table*)* @ci_set_valid_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_set_valid_flag(%struct.ci_mc_reg_table* %0) #0 {
  %2 = alloca %struct.ci_mc_reg_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ci_mc_reg_table* %0, %struct.ci_mc_reg_table** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %57, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %2, align 8
  %8 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %5
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %53, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %2, align 8
  %15 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %2, align 8
  %20 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %2, align 8
  %33 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %31, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %18
  %46 = load i32, i32* %3, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.ci_mc_reg_table*, %struct.ci_mc_reg_table** %2, align 8
  %49 = getelementptr inbounds %struct.ci_mc_reg_table, %struct.ci_mc_reg_table* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %56

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %12

56:                                               ; preds = %45, %12
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %5

60:                                               ; preds = %5
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
