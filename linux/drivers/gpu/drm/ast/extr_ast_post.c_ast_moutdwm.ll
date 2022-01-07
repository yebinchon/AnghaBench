; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_moutdwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_moutdwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_moutdwm(%struct.ast_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ast_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, -65536
  %11 = call i32 @ast_write32(%struct.ast_private* %8, i32 61444, i32 %10)
  %12 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %13 = call i32 @ast_write32(%struct.ast_private* %12, i32 61440, i32 1)
  br label %14

14:                                               ; preds = %18, %3
  %15 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %16 = call i32 @ast_read32(%struct.ast_private* %15, i32 61444)
  %17 = and i32 %16, -65536
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, -65536
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %14, label %23

23:                                               ; preds = %18
  %24 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 65535
  %27 = add nsw i32 65536, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ast_write32(%struct.ast_private* %24, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_read32(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
