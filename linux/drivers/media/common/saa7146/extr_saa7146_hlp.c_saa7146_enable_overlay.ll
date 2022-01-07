; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_enable_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_enable_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@MC1 = common dso_local global i32 0, align 4
@MASK_06 = common dso_local global i32 0, align 4
@MASK_22 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_enable_overlay(%struct.saa7146_fh* %0) #0 {
  %2 = alloca %struct.saa7146_fh*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %2, align 8
  %5 = load %struct.saa7146_fh*, %struct.saa7146_fh** %2, align 8
  %6 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %5, i32 0, i32 0
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  store %struct.saa7146_dev* %7, %struct.saa7146_dev** %3, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %9 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %8, i32 0, i32 0
  %10 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  store %struct.saa7146_vv* %10, %struct.saa7146_vv** %4, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %12 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %13 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %19 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %25 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @saa7146_set_window(%struct.saa7146_dev* %11, i32 %17, i32 %23, i32 %28)
  %30 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %31 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %32 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %38 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %50 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %55 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @saa7146_set_position(%struct.saa7146_dev* %30, i32 %36, i32 %42, i32 %48, i32 %53, i32 %58)
  %60 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %61 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %62 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @saa7146_set_output_format(%struct.saa7146_dev* %60, i32 %65)
  %67 = load %struct.saa7146_fh*, %struct.saa7146_fh** %2, align 8
  %68 = call i32 @saa7146_set_clipping_rect(%struct.saa7146_fh* %67)
  %69 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %70 = load i32, i32* @MC1, align 4
  %71 = load i32, i32* @MASK_06, align 4
  %72 = load i32, i32* @MASK_22, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @saa7146_write(%struct.saa7146_dev* %69, i32 %70, i32 %73)
  ret i32 0
}

declare dso_local i32 @saa7146_set_window(%struct.saa7146_dev*, i32, i32, i32) #1

declare dso_local i32 @saa7146_set_position(%struct.saa7146_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @saa7146_set_output_format(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_set_clipping_rect(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
