; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__ldst_memtomem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c__ldst_memtomem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._xfer_spec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pl330_config* }
%struct.pl330_config = type { i32 }

@PERIPH_REV_R1P0 = common dso_local global i64 0, align 8
@ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct._xfer_spec*, i32)* @_ldst_memtomem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ldst_memtomem(i32 %0, i32* %1, %struct._xfer_spec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct._xfer_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pl330_config*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct._xfer_spec* %2, %struct._xfer_spec** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct._xfer_spec*, %struct._xfer_spec** %7, align 8
  %12 = getelementptr inbounds %struct._xfer_spec, %struct._xfer_spec* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.pl330_config*, %struct.pl330_config** %15, align 8
  store %struct.pl330_config* %16, %struct.pl330_config** %10, align 8
  %17 = load %struct.pl330_config*, %struct.pl330_config** %10, align 8
  %18 = getelementptr inbounds %struct.pl330_config, %struct.pl330_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @get_revision(i32 %19)
  %21 = load i64, i64* @PERIPH_REV_R1P0, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %28, %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* @ALWAYS, align 4
  %35 = call i64 @_emit_LD(i32 %29, i32* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* @ALWAYS, align 4
  %46 = call i64 @_emit_ST(i32 %40, i32* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %24

51:                                               ; preds = %24
  br label %101

52:                                               ; preds = %4
  br label %53

53:                                               ; preds = %57, %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @ALWAYS, align 4
  %64 = call i64 @_emit_LD(i32 %58, i32* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i64 @_emit_RMB(i32 %69, i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* @ALWAYS, align 4
  %85 = call i64 @_emit_ST(i32 %79, i32* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = call i64 @_emit_WMB(i32 %90, i32* %94)
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %53

100:                                              ; preds = %53
  br label %101

101:                                              ; preds = %100, %51
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i64 @get_revision(i32) #1

declare dso_local i64 @_emit_LD(i32, i32*, i32) #1

declare dso_local i64 @_emit_ST(i32, i32*, i32) #1

declare dso_local i64 @_emit_RMB(i32, i32*) #1

declare dso_local i64 @_emit_WMB(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
