; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx565akm_panel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"spi_sync %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acx565akm_panel*, i32, i32*, i32, i32*, i32)* @acx565akm_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acx565akm_transfer(%struct.acx565akm_panel* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.acx565akm_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.spi_message, align 4
  %14 = alloca %struct.spi_transfer*, align 8
  %15 = alloca [5 x %struct.spi_transfer], align 16
  %16 = alloca i32, align 4
  store %struct.acx565akm_panel* %0, %struct.acx565akm_panel** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = call i32 @spi_message_init(%struct.spi_message* %13)
  %18 = getelementptr inbounds [5 x %struct.spi_transfer], [5 x %struct.spi_transfer]* %15, i64 0, i64 0
  %19 = call i32 @memset(%struct.spi_transfer* %18, i32 0, i32 120)
  %20 = getelementptr inbounds [5 x %struct.spi_transfer], [5 x %struct.spi_transfer]* %15, i64 0, i64 0
  store %struct.spi_transfer* %20, %struct.spi_transfer** %14, align 8
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %8, align 4
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 0
  store i32* %8, i32** %24, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  store i32 9, i32* %26, align 8
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 2
  store i32 2, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 1
  store i32 10, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %31, %6
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %41 = call i32 @spi_message_add_tail(%struct.spi_transfer* %40, %struct.spi_message* %13)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 1
  store %struct.spi_transfer* %46, %struct.spi_transfer** %14, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 1
  store i32 9, i32* %54, align 8
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %56 = call i32 @spi_message_add_tail(%struct.spi_transfer* %55, %struct.spi_message* %13)
  br label %57

57:                                               ; preds = %44, %39
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 1
  store %struct.spi_transfer* %62, %struct.spi_transfer** %14, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %14, align 8
  %70 = call i32 @spi_message_add_tail(%struct.spi_transfer* %69, %struct.spi_message* %13)
  br label %71

71:                                               ; preds = %60, %57
  %72 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %7, align 8
  %73 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @spi_sync(%struct.TYPE_2__* %74, %struct.spi_message* %13)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %7, align 8
  %80 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %71
  ret void
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
