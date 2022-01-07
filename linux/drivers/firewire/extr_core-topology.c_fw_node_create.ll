; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_fw_node_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_fw_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_node = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ports = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LOCAL_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_node* (i32, i32, i32)* @fw_node_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_node* @fw_node_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fw_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_node*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %10 = load i32, i32* @ports, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @struct_size(%struct.fw_node* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.fw_node* @kzalloc(i32 %12, i32 %13)
  store %struct.fw_node* %14, %struct.fw_node** %8, align 8
  %15 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %16 = icmp eq %struct.fw_node* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.fw_node* null, %struct.fw_node** %4, align 8
  br label %50

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %21 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @LOCAL_BUS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @SELF_ID_PHY_ID(i32 %23)
  %25 = or i32 %22, %24
  %26 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %27 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @SELF_ID_LINK_ON(i32 %28)
  %30 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %31 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @SELF_ID_PHY_SPEED(i32 %32)
  %34 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %35 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @SELF_ID_PHY_INITIATOR(i32 %36)
  %38 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %39 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %42 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %44 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %43, i32 0, i32 4
  %45 = call i32 @refcount_set(i32* %44, i32 1)
  %46 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  %47 = getelementptr inbounds %struct.fw_node, %struct.fw_node* %46, i32 0, i32 3
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.fw_node*, %struct.fw_node** %8, align 8
  store %struct.fw_node* %49, %struct.fw_node** %4, align 8
  br label %50

50:                                               ; preds = %18, %17
  %51 = load %struct.fw_node*, %struct.fw_node** %4, align 8
  ret %struct.fw_node* %51
}

declare dso_local %struct.fw_node* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.fw_node*, i32, i32) #1

declare dso_local i32 @SELF_ID_PHY_ID(i32) #1

declare dso_local i32 @SELF_ID_LINK_ON(i32) #1

declare dso_local i32 @SELF_ID_PHY_SPEED(i32) #1

declare dso_local i32 @SELF_ID_PHY_INITIATOR(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
