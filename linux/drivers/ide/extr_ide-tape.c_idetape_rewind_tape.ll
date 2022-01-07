; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_rewind_tape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_rewind_tape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ide_tape_obj* }
%struct.ide_tape_obj = type { %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.ide_atapi_pc = type { i32 }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @idetape_rewind_tape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_rewind_tape(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.ide_tape_obj*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.ide_atapi_pc, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %9, align 8
  store %struct.ide_tape_obj* %10, %struct.ide_tape_obj** %4, align 8
  %11 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %4, align 8
  %12 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %11, i32 0, i32 0
  %13 = load %struct.gendisk*, %struct.gendisk** %12, align 8
  store %struct.gendisk* %13, %struct.gendisk** %5, align 8
  %14 = load i32, i32* @IDE_DBG_FUNC, align 4
  %15 = call i32 @ide_debug_log(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = call i32 @idetape_create_rewind_cmd(%struct.TYPE_6__* %16, %struct.ide_atapi_pc* %6)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %20 = call i32 @ide_queue_pc_tail(%struct.TYPE_6__* %18, %struct.gendisk* %19, %struct.ide_atapi_pc* %6, i32* null, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @ide_tape_read_position(%struct.TYPE_6__* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @idetape_create_rewind_cmd(%struct.TYPE_6__*, %struct.ide_atapi_pc*) #1

declare dso_local i32 @ide_queue_pc_tail(%struct.TYPE_6__*, %struct.gendisk*, %struct.ide_atapi_pc*, i32*, i32) #1

declare dso_local i32 @ide_tape_read_position(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
