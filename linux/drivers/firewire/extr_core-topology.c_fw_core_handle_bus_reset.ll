; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_fw_core_handle_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_fw_core_handle_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32, i32, i32, i32, %struct.fw_node*, i32, i32, i32, i32, i64 }
%struct.fw_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"topology build failed\0A\00", align 1
@report_found_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_core_handle_bus_reset(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.fw_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fw_node*, align 8
  %14 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %17 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @is_next_generation(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %6
  %22 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %23 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %22, i32 0, i32 5
  %24 = load %struct.fw_node*, %struct.fw_node** %23, align 8
  %25 = icmp ne %struct.fw_node* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %28 = call i32 @fw_destroy_nodes(%struct.fw_card* %27)
  %29 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %30 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %29, i32 0, i32 10
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %21, %6
  %32 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %33 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %32, i32 0, i32 4
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %37 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %40 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %43 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i32 (...) @smp_wmb()
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %47 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = call i32 (...) @get_jiffies_64()
  %49 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %50 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %52 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %51, i32 0, i32 2
  store i32 65535, i32* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %55 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %57 = call i32 @fw_schedule_bm_work(%struct.fw_card* %56, i32 0)
  %58 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.fw_node* @build_tree(%struct.fw_card* %58, i32* %59, i32 %60)
  store %struct.fw_node* %61, %struct.fw_node** %13, align 8
  %62 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @update_topology_map(%struct.fw_card* %62, i32* %63, i32 %64)
  %66 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %67 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.fw_node*, %struct.fw_node** %13, align 8
  %71 = icmp eq %struct.fw_node* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %31
  %73 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %74 = call i32 @fw_err(%struct.fw_card* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %93

75:                                               ; preds = %31
  %76 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %77 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %76, i32 0, i32 5
  %78 = load %struct.fw_node*, %struct.fw_node** %77, align 8
  %79 = icmp eq %struct.fw_node* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.fw_node*, %struct.fw_node** %13, align 8
  %82 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %83 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %82, i32 0, i32 5
  store %struct.fw_node* %81, %struct.fw_node** %83, align 8
  %84 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %85 = load %struct.fw_node*, %struct.fw_node** %13, align 8
  %86 = load i32, i32* @report_found_node, align 4
  %87 = call i32 @for_each_fw_node(%struct.fw_card* %84, %struct.fw_node* %85, i32 %86)
  br label %92

88:                                               ; preds = %75
  %89 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %90 = load %struct.fw_node*, %struct.fw_node** %13, align 8
  %91 = call i32 @update_tree(%struct.fw_card* %89, %struct.fw_node* %90)
  br label %92

92:                                               ; preds = %88, %80
  br label %93

93:                                               ; preds = %92, %72
  %94 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %95 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %94, i32 0, i32 4
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  ret void
}

declare dso_local i32 @is_next_generation(i32, i32) #1

declare dso_local i32 @fw_destroy_nodes(%struct.fw_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @fw_schedule_bm_work(%struct.fw_card*, i32) #1

declare dso_local %struct.fw_node* @build_tree(%struct.fw_card*, i32*, i32) #1

declare dso_local i32 @update_topology_map(%struct.fw_card*, i32*, i32) #1

declare dso_local i32 @fw_err(%struct.fw_card*, i8*) #1

declare dso_local i32 @for_each_fw_node(%struct.fw_card*, %struct.fw_node*, i32) #1

declare dso_local i32 @update_tree(%struct.fw_card*, %struct.fw_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
