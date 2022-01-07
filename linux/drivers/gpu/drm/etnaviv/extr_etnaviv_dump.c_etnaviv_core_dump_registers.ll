; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_dump.c_etnaviv_core_dump_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_dump.c_etnaviv_core_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core_dump_iterator = type { %struct.etnaviv_dump_registers* }
%struct.etnaviv_dump_registers = type { i32, i32 }
%struct.etnaviv_gpu = type { i32 }

@etnaviv_dump_registers = common dso_local global i32* null, align 8
@ETDUMP_BUF_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.core_dump_iterator*, %struct.etnaviv_gpu*)* @etnaviv_core_dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_core_dump_registers(%struct.core_dump_iterator* %0, %struct.etnaviv_gpu* %1) #0 {
  %3 = alloca %struct.core_dump_iterator*, align 8
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.etnaviv_dump_registers*, align 8
  %6 = alloca i32, align 4
  store %struct.core_dump_iterator* %0, %struct.core_dump_iterator** %3, align 8
  store %struct.etnaviv_gpu* %1, %struct.etnaviv_gpu** %4, align 8
  %7 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.core_dump_iterator, %struct.core_dump_iterator* %7, i32 0, i32 0
  %9 = load %struct.etnaviv_dump_registers*, %struct.etnaviv_dump_registers** %8, align 8
  store %struct.etnaviv_dump_registers* %9, %struct.etnaviv_dump_registers** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** @etnaviv_dump_registers, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load i32*, i32** @etnaviv_dump_registers, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.etnaviv_dump_registers*, %struct.etnaviv_dump_registers** %5, align 8
  %22 = getelementptr inbounds %struct.etnaviv_dump_registers, %struct.etnaviv_dump_registers* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %24 = load i32*, i32** @etnaviv_dump_registers, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpu_read(%struct.etnaviv_gpu* %23, i32 %28)
  %30 = load %struct.etnaviv_dump_registers*, %struct.etnaviv_dump_registers** %5, align 8
  %31 = getelementptr inbounds %struct.etnaviv_dump_registers, %struct.etnaviv_dump_registers* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load %struct.etnaviv_dump_registers*, %struct.etnaviv_dump_registers** %5, align 8
  %36 = getelementptr inbounds %struct.etnaviv_dump_registers, %struct.etnaviv_dump_registers* %35, i32 1
  store %struct.etnaviv_dump_registers* %36, %struct.etnaviv_dump_registers** %5, align 8
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.core_dump_iterator*, %struct.core_dump_iterator** %3, align 8
  %39 = load i32, i32* @ETDUMP_BUF_REG, align 4
  %40 = load %struct.etnaviv_dump_registers*, %struct.etnaviv_dump_registers** %5, align 8
  %41 = call i32 @etnaviv_core_dump_header(%struct.core_dump_iterator* %38, i32 %39, %struct.etnaviv_dump_registers* %40)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @etnaviv_core_dump_header(%struct.core_dump_iterator*, i32, %struct.etnaviv_dump_registers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
