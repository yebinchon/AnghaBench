; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_p_sys-t.c_sys_t_policy_do_len_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_p_sys-t.c_sys_t_policy_do_len_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.sys_t_policy_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @sys_t_policy_do_len_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_t_policy_do_len_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca %struct.sys_t_policy_node*, align 8
  %9 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.config_item*, %struct.config_item** %4, align 8
  %11 = getelementptr inbounds %struct.config_item, %struct.config_item* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.mutex* %15, %struct.mutex** %7, align 8
  %16 = load %struct.config_item*, %struct.config_item** %4, align 8
  %17 = call %struct.sys_t_policy_node* @to_pdrv_policy_node(%struct.config_item* %16)
  store %struct.sys_t_policy_node* %17, %struct.sys_t_policy_node** %8, align 8
  %18 = load %struct.mutex*, %struct.mutex** %7, align 8
  %19 = call i32 @mutex_lock(%struct.mutex* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.sys_t_policy_node*, %struct.sys_t_policy_node** %8, align 8
  %22 = getelementptr inbounds %struct.sys_t_policy_node, %struct.sys_t_policy_node* %21, i32 0, i32 0
  %23 = call i32 @kstrtobool(i8* %20, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.mutex*, %struct.mutex** %7, align 8
  %25 = call i32 @mutex_unlock(%struct.mutex* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  br label %33

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i64 [ %30, %28 ], [ %32, %31 ]
  %35 = trunc i64 %34 to i32
  ret i32 %35
}

declare dso_local %struct.sys_t_policy_node* @to_pdrv_policy_node(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
