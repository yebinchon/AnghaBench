; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io-std.c_ide_tf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io-std.c_ide_tf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.ide_io_ports }
%struct.ide_io_ports = type { i64, i64, i64, i64, i64, i64 }
%struct.ide_taskfile = type { i32, i32, i32, i32, i32, i32 }

@IDE_HFLAG_MMIO = common dso_local global i32 0, align 4
@IDE_VALID_FEATURE = common dso_local global i32 0, align 4
@IDE_VALID_NSECT = common dso_local global i32 0, align 4
@IDE_VALID_LBAL = common dso_local global i32 0, align 4
@IDE_VALID_LBAM = common dso_local global i32 0, align 4
@IDE_VALID_LBAH = common dso_local global i32 0, align 4
@IDE_VALID_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_tf_load(%struct.TYPE_5__* %0, %struct.ide_taskfile* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ide_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.ide_io_ports*, align 8
  %9 = alloca void (i32, i64)*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.ide_taskfile* %1, %struct.ide_taskfile** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.ide_io_ports* %15, %struct.ide_io_ports** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IDE_HFLAG_MMIO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store void (i32, i64)* @ide_mm_outb, void (i32, i64)** %9, align 8
  br label %28

27:                                               ; preds = %3
  store void (i32, i64)* @ide_outb, void (i32, i64)** %9, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IDE_VALID_FEATURE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load void (i32, i64)*, void (i32, i64)** %9, align 8
  %35 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %36 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ide_io_ports*, %struct.ide_io_ports** %8, align 8
  %39 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  call void %34(i32 %37, i64 %40)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IDE_VALID_NSECT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load void (i32, i64)*, void (i32, i64)** %9, align 8
  %48 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %49 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ide_io_ports*, %struct.ide_io_ports** %8, align 8
  %52 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  call void %47(i32 %50, i64 %53)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @IDE_VALID_LBAL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load void (i32, i64)*, void (i32, i64)** %9, align 8
  %61 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %62 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ide_io_ports*, %struct.ide_io_ports** %8, align 8
  %65 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  call void %60(i32 %63, i64 %66)
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @IDE_VALID_LBAM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load void (i32, i64)*, void (i32, i64)** %9, align 8
  %74 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %75 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ide_io_ports*, %struct.ide_io_ports** %8, align 8
  %78 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  call void %73(i32 %76, i64 %79)
  br label %80

80:                                               ; preds = %72, %67
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @IDE_VALID_LBAH, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load void (i32, i64)*, void (i32, i64)** %9, align 8
  %87 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %88 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ide_io_ports*, %struct.ide_io_ports** %8, align 8
  %91 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  call void %86(i32 %89, i64 %92)
  br label %93

93:                                               ; preds = %85, %80
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @IDE_VALID_DEVICE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load void (i32, i64)*, void (i32, i64)** %9, align 8
  %100 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %101 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ide_io_ports*, %struct.ide_io_ports** %8, align 8
  %104 = getelementptr inbounds %struct.ide_io_ports, %struct.ide_io_ports* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  call void %99(i32 %102, i64 %105)
  br label %106

106:                                              ; preds = %98, %93
  ret void
}

declare dso_local void @ide_mm_outb(i32, i64) #1

declare dso_local void @ide_outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
