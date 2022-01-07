; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_position_tape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_position_tape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.gendisk* }
%struct.gendisk = type { i32 }
%struct.ide_atapi_pc = type { i32 }

@IDETAPE_DIR_READ = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32)* @idetape_position_tape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_position_tape(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.gendisk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ide_atapi_pc, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.gendisk*, %struct.gendisk** %18, align 8
  store %struct.gendisk* %19, %struct.gendisk** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IDETAPE_DIR_READ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = call i32 @__ide_tape_discard_merge_buffer(%struct.TYPE_10__* %26)
  br label %28

28:                                               ; preds = %25, %4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 300, %30
  %32 = call i32 @idetape_wait_ready(%struct.TYPE_10__* %29, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @idetape_create_locate_cmd(%struct.TYPE_10__* %33, %struct.ide_atapi_pc* %13, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  %40 = call i32 @ide_queue_pc_tail(%struct.TYPE_10__* %38, %struct.gendisk* %39, %struct.ide_atapi_pc* %13, i32* null, i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %53

45:                                               ; preds = %28
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = call i32 @ide_tape_read_position(%struct.TYPE_10__* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %50, %43
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @__ide_tape_discard_merge_buffer(%struct.TYPE_10__*) #1

declare dso_local i32 @idetape_wait_ready(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @idetape_create_locate_cmd(%struct.TYPE_10__*, %struct.ide_atapi_pc*, i32, i32, i32) #1

declare dso_local i32 @ide_queue_pc_tail(%struct.TYPE_10__*, %struct.gendisk*, %struct.ide_atapi_pc*, i32*, i32) #1

declare dso_local i32 @ide_tape_read_position(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
