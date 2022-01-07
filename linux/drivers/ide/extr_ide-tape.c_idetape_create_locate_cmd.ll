; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_create_locate_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_create_locate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_atapi_pc = type { i32*, i32 }

@POSITION_TO_ELEMENT = common dso_local global i32 0, align 4
@PC_FLAG_WAIT_FOR_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ide_atapi_pc*, i32, i32, i32)* @idetape_create_locate_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idetape_create_locate_cmd(i32* %0, %struct.ide_atapi_pc* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ide_atapi_pc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %12 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %11)
  %13 = load i32, i32* @POSITION_TO_ELEMENT, align 4
  %14 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %15 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %19 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 2, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %25 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = call i32 @put_unaligned(i32 %23, i32* %27)
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %31 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @PC_FLAG_WAIT_FOR_DSC, align 4
  %35 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %7, align 8
  %36 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  ret void
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
