; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_merger_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_d71_merger_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32 }
%struct.seq_file = type { i32 }

@MG_INPUT_ID0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MG_INPUT_ID0:\09\090x%X\0A\00", align 1
@MG_INPUT_ID1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"MG_INPUT_ID1:\09\090x%X\0A\00", align 1
@BLK_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"MG_CONTROL:\09\090x%X\0A\00", align 1
@MG_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"MG_SIZE:\09\090x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component*, %struct.seq_file*)* @d71_merger_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_merger_dump(%struct.komeda_component* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.komeda_component*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  store %struct.komeda_component* %0, %struct.komeda_component** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %7 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %8 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dump_block_header(%struct.seq_file* %6, i32 %9)
  %11 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %12 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MG_INPUT_ID0, align 4
  %15 = call i32 @get_values_from_reg(i32 %13, i32 %14, i32 1, i32* %5)
  %16 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %20 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MG_INPUT_ID1, align 4
  %23 = call i32 @get_values_from_reg(i32 %21, i32 %22, i32 1, i32* %5)
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %28 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BLK_CONTROL, align 4
  %31 = call i32 @get_values_from_reg(i32 %29, i32 %30, i32 1, i32* %5)
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.komeda_component*, %struct.komeda_component** %3, align 8
  %36 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MG_SIZE, align 4
  %39 = call i32 @get_values_from_reg(i32 %37, i32 %38, i32 1, i32* %5)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  ret void
}

declare dso_local i32 @dump_block_header(%struct.seq_file*, i32) #1

declare dso_local i32 @get_values_from_reg(i32, i32, i32, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
