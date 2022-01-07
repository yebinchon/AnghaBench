; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-atapi.c_ide_create_request_sense_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-atapi.c_ide_create_request_sense_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ide_atapi_pc = type { i32*, i32 }

@REQUEST_SENSE = common dso_local global i32 0, align 4
@ide_floppy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_create_request_sense_cmd(%struct.TYPE_3__* %0, %struct.ide_atapi_pc* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ide_atapi_pc*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %4, align 8
  %5 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %6 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %5)
  %7 = load i32, i32* @REQUEST_SENSE, align 4
  %8 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %9 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ide_floppy, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %19 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32 255, i32* %21, align 4
  %22 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %23 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %22, i32 0, i32 1
  store i32 18, i32* %23, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %26 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 20, i32* %28, align 4
  %29 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %30 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %29, i32 0, i32 1
  store i32 20, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %17
  ret void
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
