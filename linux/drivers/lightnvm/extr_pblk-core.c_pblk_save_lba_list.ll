; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_save_lba_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_save_lba_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32* }
%struct.pblk_line = type { %struct.pblk_emeta*, %struct.pblk_w_err_gc* }
%struct.pblk_emeta = type { i32 }
%struct.pblk_w_err_gc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.pblk_line*)* @pblk_save_lba_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_save_lba_list(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pblk_w_err_gc*, align 8
  %8 = alloca %struct.pblk_emeta*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %9 = load %struct.pblk*, %struct.pblk** %3, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 0
  store %struct.pblk_line_meta* %10, %struct.pblk_line_meta** %5, align 8
  %11 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %12 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %17 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %16, i32 0, i32 1
  %18 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %17, align 8
  store %struct.pblk_w_err_gc* %18, %struct.pblk_w_err_gc** %7, align 8
  %19 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %20 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %19, i32 0, i32 0
  %21 = load %struct.pblk_emeta*, %struct.pblk_emeta** %20, align 8
  store %struct.pblk_emeta* %21, %struct.pblk_emeta** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @kvmalloc(i32 %22, i32 %23)
  %25 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %7, align 8
  %26 = getelementptr inbounds %struct.pblk_w_err_gc, %struct.pblk_w_err_gc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.pblk_w_err_gc*, %struct.pblk_w_err_gc** %7, align 8
  %28 = getelementptr inbounds %struct.pblk_w_err_gc, %struct.pblk_w_err_gc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pblk*, %struct.pblk** %3, align 8
  %31 = load %struct.pblk_emeta*, %struct.pblk_emeta** %8, align 8
  %32 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @emeta_to_lbas(%struct.pblk* %30, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memcpy(i32 %29, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @kvmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @emeta_to_lbas(%struct.pblk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
