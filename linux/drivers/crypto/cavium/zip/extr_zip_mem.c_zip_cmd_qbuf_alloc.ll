; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_mem.c_zip_cmd_qbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_mem.c_zip_cmd_qbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ZIP_CMD_QBUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cmd_qbuf_alloc[%d] Success : %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_cmd_qbuf_alloc(%struct.zip_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_device*, align 8
  %5 = alloca i32, align 4
  store %struct.zip_device* %0, %struct.zip_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @GFP_DMA, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ZIP_CMD_QBUF_SIZE, align 4
  %10 = call i32 @get_order(i32 %9)
  %11 = call i64 @__get_free_pages(i32 %8, i32 %10)
  %12 = inttoptr i64 %11 to i32*
  %13 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  %14 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %12, i32** %19, align 8
  %20 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  %21 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  %34 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @ZIP_CMD_QBUF_SIZE, align 4
  %42 = call i32 @memset(i32* %40, i32 0, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.zip_device*, %struct.zip_device** %4, align 8
  %45 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @zip_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43, i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %32, %29
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @zip_dbg(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
