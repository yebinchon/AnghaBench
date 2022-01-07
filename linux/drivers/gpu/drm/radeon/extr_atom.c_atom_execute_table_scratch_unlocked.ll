; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_execute_table_scratch_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_execute_table_scratch_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32, i64*, i32, i64, i64, i64 }

@ATOM_IO_MM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atom_execute_table_scratch_unlocked(%struct.atom_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.atom_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %9 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %12 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %14 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %16 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @ATOM_IO_MM, align 4
  %18 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %19 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %21 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %25 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @atom_execute_table_locked(%struct.atom_context* %28, i32 %29, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.atom_context*, %struct.atom_context** %4, align 8
  %33 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atom_execute_table_locked(%struct.atom_context*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
