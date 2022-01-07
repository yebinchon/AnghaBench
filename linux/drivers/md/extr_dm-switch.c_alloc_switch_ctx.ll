; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_alloc_switch_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_alloc_switch_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_ctx = type { i32, %struct.dm_target* }
%struct.dm_target = type { %struct.switch_ctx* }

@path_list = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.switch_ctx* (%struct.dm_target*, i32, i32)* @alloc_switch_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.switch_ctx* @alloc_switch_ctx(%struct.dm_target* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.switch_ctx*, align 8
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.switch_ctx*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  %10 = load i32, i32* @path_list, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @struct_size(%struct.switch_ctx* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.switch_ctx* @kzalloc(i32 %12, i32 %13)
  store %struct.switch_ctx* %14, %struct.switch_ctx** %8, align 8
  %15 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  %16 = icmp ne %struct.switch_ctx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.switch_ctx* null, %struct.switch_ctx** %4, align 8
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %20 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %20, i32 0, i32 1
  store %struct.dm_target* %19, %struct.dm_target** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  %26 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %27 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %26, i32 0, i32 0
  store %struct.switch_ctx* %25, %struct.switch_ctx** %27, align 8
  %28 = load %struct.switch_ctx*, %struct.switch_ctx** %8, align 8
  store %struct.switch_ctx* %28, %struct.switch_ctx** %4, align 8
  br label %29

29:                                               ; preds = %18, %17
  %30 = load %struct.switch_ctx*, %struct.switch_ctx** %4, align 8
  ret %struct.switch_ctx* %30
}

declare dso_local %struct.switch_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.switch_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
