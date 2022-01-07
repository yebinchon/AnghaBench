; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@HID_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Sending too large output report\0A\00", align 1
@WIIMOTE_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Output queue is full\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i8**, i64)* @wiimote_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_queue(%struct.wiimote_data* %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.wiimote_data*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @HID_MAX_BUFFER_SIZE, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %14 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @hid_warn(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %18 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  br label %104

22:                                               ; preds = %3
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %29 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %33 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i32 %38, i8** %39, i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %44 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %48 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %42, i64* %52, align 8
  %53 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %54 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  %58 = load i32, i32* @WIIMOTE_BUFSIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = urem i64 %57, %59
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %8, align 8
  %62 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %63 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %67 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %22
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %76 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %79 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = call i32 @schedule_work(i32* %80)
  br label %103

82:                                               ; preds = %22
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %85 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = icmp ne i8* %83, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load i8*, i8** %8, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %95 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  br label %102

97:                                               ; preds = %82
  %98 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %99 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @hid_warn(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %104

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %72
  br label %107

104:                                              ; preds = %97, %12
  %105 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %106 = call i32 @wiimote_cmd_abort(%struct.wiimote_data* %105)
  br label %107

107:                                              ; preds = %104, %103
  %108 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %109 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  ret void
}

declare dso_local i32 @hid_warn(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8**, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wiimote_cmd_abort(%struct.wiimote_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
