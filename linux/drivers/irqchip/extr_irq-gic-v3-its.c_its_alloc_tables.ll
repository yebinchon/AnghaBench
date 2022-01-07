; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_alloc_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_alloc_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_node = type { i32, i32, %struct.its_baser* }
%struct.its_baser = type { i32, i32 }

@GITS_BASER_InnerShareable = common dso_local global i32 0, align 4
@GITS_BASER_RaWaWb = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@ITS_FLAGS_WORKAROUND_CAVIUM_22375 = common dso_local global i32 0, align 4
@GITS_BASER_nCnB = common dso_local global i32 0, align 4
@GITS_BASER_NR_REGS = common dso_local global i32 0, align 4
@ITS_MAX_VPEID_BITS = common dso_local global i32 0, align 4
@GITS_BASER_CACHEABILITY_MASK = common dso_local global i32 0, align 4
@GITS_BASER_SHAREABILITY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.its_node*)* @its_alloc_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_alloc_tables(%struct.its_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.its_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.its_baser*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.its_node* %0, %struct.its_node** %3, align 8
  %14 = load i32, i32* @GITS_BASER_InnerShareable, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @GITS_BASER_RaWaWb, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SZ_64K, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.its_node*, %struct.its_node** %3, align 8
  %18 = getelementptr inbounds %struct.its_node, %struct.its_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ITS_FLAGS_WORKAROUND_CAVIUM_22375, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @GITS_BASER_nCnB, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %1
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %89, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GITS_BASER_NR_REGS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %26
  %31 = load %struct.its_node*, %struct.its_node** %3, align 8
  %32 = getelementptr inbounds %struct.its_node, %struct.its_node* %31, i32 0, i32 2
  %33 = load %struct.its_baser*, %struct.its_baser** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %33, i64 %35
  store %struct.its_baser* %36, %struct.its_baser** %9, align 8
  %37 = load %struct.its_node*, %struct.its_node** %3, align 8
  %38 = load %struct.its_baser*, %struct.its_baser** %9, align 8
  %39 = call i32 @its_read_baser(%struct.its_node* %37, %struct.its_baser* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @GITS_BASER_TYPE(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @get_order(i32 %42)
  store i32 %43, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  switch i32 %44, label %60 [
    i32 129, label %45
    i32 130, label %46
    i32 128, label %54
  ]

45:                                               ; preds = %30
  br label %89

46:                                               ; preds = %30
  %47 = load %struct.its_node*, %struct.its_node** %3, align 8
  %48 = load %struct.its_baser*, %struct.its_baser** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.its_node*, %struct.its_node** %3, align 8
  %51 = getelementptr inbounds %struct.its_node, %struct.its_node* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @its_parse_indirect_baser(%struct.its_node* %47, %struct.its_baser* %48, i32 %49, i32* %12, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %60

54:                                               ; preds = %30
  %55 = load %struct.its_node*, %struct.its_node** %3, align 8
  %56 = load %struct.its_baser*, %struct.its_baser** %9, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ITS_MAX_VPEID_BITS, align 4
  %59 = call i32 @its_parse_indirect_baser(%struct.its_node* %55, %struct.its_baser* %56, i32 %57, i32* %12, i32 %58)
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %30, %54, %46
  %61 = load %struct.its_node*, %struct.its_node** %3, align 8
  %62 = load %struct.its_baser*, %struct.its_baser** %9, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @its_setup_baser(%struct.its_node* %61, %struct.its_baser* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.its_node*, %struct.its_node** %3, align 8
  %73 = call i32 @its_free_tables(%struct.its_node* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %93

75:                                               ; preds = %60
  %76 = load %struct.its_baser*, %struct.its_baser** %9, align 8
  %77 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %6, align 4
  %79 = load %struct.its_baser*, %struct.its_baser** %9, align 8
  %80 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GITS_BASER_CACHEABILITY_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %5, align 4
  %84 = load %struct.its_baser*, %struct.its_baser** %9, align 8
  %85 = getelementptr inbounds %struct.its_baser, %struct.its_baser* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GITS_BASER_SHAREABILITY_MASK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %75, %45
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %26

92:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %71
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @its_read_baser(%struct.its_node*, %struct.its_baser*) #1

declare dso_local i32 @GITS_BASER_TYPE(i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @its_parse_indirect_baser(%struct.its_node*, %struct.its_baser*, i32, i32*, i32) #1

declare dso_local i32 @its_setup_baser(%struct.its_node*, %struct.its_baser*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @its_free_tables(%struct.its_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
