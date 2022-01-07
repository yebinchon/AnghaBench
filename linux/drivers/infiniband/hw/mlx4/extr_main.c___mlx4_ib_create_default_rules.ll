; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_create_default_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c___mlx4_ib_create_default_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.ib_qp = type { i32 }
%struct.default_rules = type { i32* }
%struct._rule_hw = type { i32 }
%union.ib_flow_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid parsing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.ib_qp*, %struct.default_rules*, %struct._rule_hw*)* @__mlx4_ib_create_default_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx4_ib_create_default_rules(%struct.mlx4_ib_dev* %0, %struct.ib_qp* %1, %struct.default_rules* %2, %struct._rule_hw* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.default_rules*, align 8
  %9 = alloca %struct._rule_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.ib_flow_spec, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %7, align 8
  store %struct.default_rules* %2, %struct.default_rules** %8, align 8
  store %struct._rule_hw* %3, %struct._rule_hw** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %58, %4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.default_rules*, %struct.default_rules** %8, align 8
  %17 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %14
  %22 = load %struct.default_rules*, %struct.default_rules** %8, align 8
  %23 = getelementptr inbounds %struct.default_rules, %struct.default_rules* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %33 [
    i32 0, label %29
    i32 128, label %30
  ]

29:                                               ; preds = %21
  br label %58

30:                                               ; preds = %21
  %31 = bitcast %union.ib_flow_spec* %13 to i32*
  store i32 128, i32* %31, align 4
  %32 = bitcast %union.ib_flow_spec* %13 to i32*
  store i32 4, i32* %32, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %30
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %41 = call i32 @parse_flow_attr(i32 %39, i32 0, %union.ib_flow_spec* %13, %struct._rule_hw* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %63

48:                                               ; preds = %36
  %49 = load %struct._rule_hw*, %struct._rule_hw** %9, align 8
  %50 = bitcast %struct._rule_hw* %49 to i8*
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = bitcast i8* %53 to %struct._rule_hw*
  store %struct._rule_hw* %54, %struct._rule_hw** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %48, %29
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %14

61:                                               ; preds = %14
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %44, %33
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @parse_flow_attr(i32, i32, %union.ib_flow_spec*, %struct._rule_hw*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
