; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_load_palette_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_load_palette_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@AST_IO_DAC_INDEX_WRITE = common dso_local global i32 0, align 4
@AST_IO_SEQ_PORT = common dso_local global i32 0, align 4
@AST_IO_DAC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ast_private*, i32, i32, i32, i32)* @ast_load_palette_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_load_palette_index(%struct.ast_private* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ast_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %12 = load i32, i32* @AST_IO_DAC_INDEX_WRITE, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ast_io_write8(%struct.ast_private* %11, i32 %12, i32 %13)
  %15 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %16 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %17 = call i32 @ast_io_read8(%struct.ast_private* %15, i32 %16)
  %18 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %19 = load i32, i32* @AST_IO_DAC_DATA, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ast_io_write8(%struct.ast_private* %18, i32 %19, i32 %20)
  %22 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %23 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %24 = call i32 @ast_io_read8(%struct.ast_private* %22, i32 %23)
  %25 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %26 = load i32, i32* @AST_IO_DAC_DATA, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ast_io_write8(%struct.ast_private* %25, i32 %26, i32 %27)
  %29 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %30 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %31 = call i32 @ast_io_read8(%struct.ast_private* %29, i32 %30)
  %32 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %33 = load i32, i32* @AST_IO_DAC_DATA, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ast_io_write8(%struct.ast_private* %32, i32 %33, i32 %34)
  %36 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %37 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %38 = call i32 @ast_io_read8(%struct.ast_private* %36, i32 %37)
  ret void
}

declare dso_local i32 @ast_io_write8(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_io_read8(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
