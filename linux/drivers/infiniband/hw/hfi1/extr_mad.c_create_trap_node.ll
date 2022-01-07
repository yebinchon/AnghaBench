; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_create_trap_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_create_trap_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trap_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IB_NOTICE_PROD_CA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trap_node* (i32, i32, i32)* @create_trap_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trap_node* @create_trap_node(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.trap_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.trap_node*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.trap_node* @kzalloc(i32 20, i32 %9)
  store %struct.trap_node* %10, %struct.trap_node** %8, align 8
  %11 = load %struct.trap_node*, %struct.trap_node** %8, align 8
  %12 = icmp ne %struct.trap_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.trap_node* null, %struct.trap_node** %4, align 8
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.trap_node*, %struct.trap_node** %8, align 8
  %16 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.trap_node*, %struct.trap_node** %8, align 8
  %20 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @IB_NOTICE_PROD_CA, align 4
  %23 = load %struct.trap_node*, %struct.trap_node** %8, align 8
  %24 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.trap_node*, %struct.trap_node** %8, align 8
  %28 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load %struct.trap_node*, %struct.trap_node** %8, align 8
  %33 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.trap_node*, %struct.trap_node** %8, align 8
  store %struct.trap_node* %35, %struct.trap_node** %4, align 8
  br label %36

36:                                               ; preds = %14, %13
  %37 = load %struct.trap_node*, %struct.trap_node** %4, align 8
  ret %struct.trap_node* %37
}

declare dso_local %struct.trap_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
