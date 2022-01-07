; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_mindwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_mindwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ast_mindwm(%struct.ast_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, -65536
  %9 = call i32 @ast_write32(%struct.ast_private* %6, i32 61444, i32 %8)
  %10 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %11 = call i32 @ast_write32(%struct.ast_private* %10, i32 61440, i32 1)
  br label %12

12:                                               ; preds = %16, %2
  %13 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %14 = call i32 @ast_read32(%struct.ast_private* %13, i32 61444)
  %15 = and i32 %14, -65536
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, -65536
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %12, label %21

21:                                               ; preds = %16
  %22 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 65535
  %25 = add nsw i32 65536, %24
  %26 = call i32 @ast_read32(%struct.ast_private* %22, i32 %25)
  ret i32 %26
}

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_read32(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
