; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_psx_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_psx_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { %struct.gc_pad* }
%struct.gc_pad = type { i64 }

@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@GC_PSX_BYTES = common dso_local global i32 0, align 4
@GC_PSX = common dso_local global i64 0, align 8
@GC_DDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc*)* @gc_psx_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_psx_process_packet(%struct.gc* %0) #0 {
  %2 = alloca %struct.gc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gc_pad*, align 8
  %8 = alloca i32, align 4
  store %struct.gc* %0, %struct.gc** %2, align 8
  %9 = load i32, i32* @GC_MAX_DEVICES, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* @GC_PSX_BYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = mul nuw i64 %10, %12
  %15 = alloca i8, i64 %14, align 16
  store i64 %10, i64* %4, align 8
  store i64 %12, i64* %5, align 8
  %16 = load i32, i32* @GC_MAX_DEVICES, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load %struct.gc*, %struct.gc** %2, align 8
  %20 = bitcast i8* %15 to i8**
  %21 = call i32 @gc_psx_read_packet(%struct.gc* %19, i8** %20, i8* %18)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %56, %1
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GC_MAX_DEVICES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.gc*, %struct.gc** %2, align 8
  %28 = getelementptr inbounds %struct.gc, %struct.gc* %27, i32 0, i32 0
  %29 = load %struct.gc_pad*, %struct.gc_pad** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %29, i64 %31
  store %struct.gc_pad* %32, %struct.gc_pad** %7, align 8
  %33 = load %struct.gc_pad*, %struct.gc_pad** %7, align 8
  %34 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GC_PSX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = load %struct.gc_pad*, %struct.gc_pad** %7, align 8
  %40 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GC_DDR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38, %26
  %45 = load %struct.gc_pad*, %struct.gc_pad** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %18, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, %12
  %53 = getelementptr inbounds i8, i8* %15, i64 %52
  %54 = call i32 @gc_psx_report_one(%struct.gc_pad* %45, i8 zeroext %49, i8* %53)
  br label %55

55:                                               ; preds = %44, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gc_psx_read_packet(%struct.gc*, i8**, i8*) #2

declare dso_local i32 @gc_psx_report_one(%struct.gc_pad*, i8 zeroext, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
