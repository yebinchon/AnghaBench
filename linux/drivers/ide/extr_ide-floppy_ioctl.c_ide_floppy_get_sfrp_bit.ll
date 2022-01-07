; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-floppy_ioctl.c_ide_floppy_get_sfrp_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-floppy_ioctl.c_ide_floppy_get_sfrp_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.ide_disk_obj* }
%struct.ide_disk_obj = type { i32 }
%struct.ide_atapi_pc = type { i32, i32 }

@IDE_AFLAG_SRFP = common dso_local global i32 0, align 4
@IDEFLOPPY_CAPABILITIES_PAGE = common dso_local global i32 0, align 4
@PC_FLAG_SUPPRESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.ide_atapi_pc*)* @ide_floppy_get_sfrp_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_floppy_get_sfrp_bit(%struct.TYPE_4__* %0, %struct.ide_atapi_pc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.ide_atapi_pc*, align 8
  %6 = alloca %struct.ide_disk_obj*, align 8
  %7 = alloca [20 x i32], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %9, align 8
  store %struct.ide_disk_obj* %10, %struct.ide_disk_obj** %6, align 8
  %11 = load i32, i32* @IDE_AFLAG_SRFP, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %18 = load i32, i32* @IDEFLOPPY_CAPABILITIES_PAGE, align 4
  %19 = call i32 @ide_floppy_create_mode_sense_cmd(%struct.ide_atapi_pc* %17, i32 %18)
  %20 = load i32, i32* @PC_FLAG_SUPPRESS_ERROR, align 4
  %21 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %22 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %6, align 8
  %27 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %30 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 0
  %31 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %32 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ide_queue_pc_tail(%struct.TYPE_4__* %25, i32 %28, %struct.ide_atapi_pc* %29, i32* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %49

37:                                               ; preds = %2
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 10
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @IDE_AFLAG_SRFP, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %37
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ide_floppy_create_mode_sense_cmd(%struct.ide_atapi_pc*, i32) #1

declare dso_local i64 @ide_queue_pc_tail(%struct.TYPE_4__*, i32, %struct.ide_atapi_pc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
