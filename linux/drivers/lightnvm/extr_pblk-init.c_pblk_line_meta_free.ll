; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_meta_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_meta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_line_mgmt = type { i32 }
%struct.pblk_line = type { %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc* }
%struct.pblk_w_err_gc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk_line_mgmt*, %struct.pblk_line*)* @pblk_line_meta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_line_meta_free(%struct.pblk_line_mgmt* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk_line_mgmt*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_w_err_gc*, align 8
  store %struct.pblk_line_mgmt* %0, %struct.pblk_line_mgmt** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %6 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %7 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %6, i32 0, i32 3
  %8 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %7, align 8
  store %struct.pblk_w_err_gc* %8, %struct.pblk_w_err_gc** %5, align 8
  %9 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %10 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %9, i32 0, i32 2
  %11 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %10, align 8
  %12 = call i32 @kfree(%struct.pblk_w_err_gc* %11)
  %13 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %14 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %13, i32 0, i32 1
  %15 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %14, align 8
  %16 = call i32 @kfree(%struct.pblk_w_err_gc* %15)
  %17 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %18 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i32 0, i32 0
  %19 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %18, align 8
  %20 = call i32 @kfree(%struct.pblk_w_err_gc* %19)
  %21 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %5, align 8
  %22 = getelementptr inbounds %struct.pblk_w_err_gc, %struct.pblk_w_err_gc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kvfree(i32 %23)
  %25 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %5, align 8
  %26 = call i32 @kfree(%struct.pblk_w_err_gc* %25)
  ret void
}

declare dso_local i32 @kfree(%struct.pblk_w_err_gc*) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
