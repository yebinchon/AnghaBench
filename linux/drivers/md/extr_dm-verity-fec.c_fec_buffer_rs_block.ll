; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_buffer_rs_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_buffer_rs_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_verity_fec_io = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dm_verity*, %struct.dm_verity_fec_io*, i32, i32)* @fec_buffer_rs_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fec_buffer_rs_block(%struct.dm_verity* %0, %struct.dm_verity_fec_io* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dm_verity*, align 8
  %6 = alloca %struct.dm_verity_fec_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %5, align 8
  store %struct.dm_verity_fec_io* %1, %struct.dm_verity_fec_io** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %6, align 8
  %10 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %18 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %16, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %15, i64 %23
  ret i32* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
