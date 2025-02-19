; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.etnaviv_cmdbuf = type { i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"virt %p phys 0x%08x free 0x%08x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cmd \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32, i32)* @etnaviv_buffer_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etnaviv_buffer_dump(%struct.etnaviv_gpu* %0, %struct.etnaviv_cmdbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca %struct.etnaviv_cmdbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %5, align 8
  store %struct.etnaviv_cmdbuf* %1, %struct.etnaviv_cmdbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %12 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %15 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %10, align 8
  %20 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %21 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %6, align 8
  %25 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %24, i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sub nsw i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %23, i32 %31, i32 %37)
  %39 = load i32, i32* @KERN_INFO, align 4
  %40 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 4
  %44 = call i32 @print_hex_dump(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 16, i32 4, i32* %41, i32 %43, i32 0)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf*, i32*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
