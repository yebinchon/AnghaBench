; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr_init_common_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ddr_init_common_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*)* @ddr_init_common_2500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddr_init_common_2500(%struct.ast_private* %0) #0 {
  %2 = alloca %struct.ast_private*, align 8
  store %struct.ast_private* %0, %struct.ast_private** %2, align 8
  %3 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %4 = call i32 @ast_moutdwm(%struct.ast_private* %3, i32 510525492, i32 131200)
  %5 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %6 = call i32 @ast_moutdwm(%struct.ast_private* %5, i32 510525448, i32 537067535)
  %7 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %8 = call i32 @ast_moutdwm(%struct.ast_private* %7, i32 510525496, i32 4095)
  %9 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %10 = call i32 @ast_moutdwm(%struct.ast_private* %9, i32 510525504, i32 -2008774588)
  %11 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %12 = call i32 @ast_moutdwm(%struct.ast_private* %11, i32 510525508, i32 608313992)
  %13 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %14 = call i32 @ast_moutdwm(%struct.ast_private* %13, i32 510525512, i32 572662306)
  %15 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %16 = call i32 @ast_moutdwm(%struct.ast_private* %15, i32 510525516, i32 572662306)
  %17 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %18 = call i32 @ast_moutdwm(%struct.ast_private* %17, i32 510525520, i32 -2147483648)
  %19 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %20 = call i32 @ast_moutdwm(%struct.ast_private* %19, i32 510525960, i32 0)
  %21 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %22 = call i32 @ast_moutdwm(%struct.ast_private* %21, i32 510525976, i32 0)
  %23 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %24 = call i32 @ast_moutdwm(%struct.ast_private* %23, i32 510525984, i32 0)
  %25 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %26 = call i32 @ast_moutdwm(%struct.ast_private* %25, i32 510525992, i32 0)
  %27 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %28 = call i32 @ast_moutdwm(%struct.ast_private* %27, i32 510526000, i32 0)
  %29 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %30 = call i32 @ast_moutdwm(%struct.ast_private* %29, i32 510526120, i32 0)
  %31 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %32 = call i32 @ast_moutdwm(%struct.ast_private* %31, i32 510526128, i32 0)
  %33 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %34 = call i32 @ast_moutdwm(%struct.ast_private* %33, i32 510526016, i32 -2046820352)
  %35 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %36 = call i32 @ast_moutdwm(%struct.ast_private* %35, i32 510526020, i32 34304)
  %37 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %38 = call i32 @ast_moutdwm(%struct.ast_private* %37, i32 510526024, i32 -2147483648)
  %39 = load %struct.ast_private*, %struct.ast_private** %2, align 8
  %40 = call i32 @ast_moutdwm(%struct.ast_private* %39, i32 510526028, i32 -2139062144)
  ret void
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
