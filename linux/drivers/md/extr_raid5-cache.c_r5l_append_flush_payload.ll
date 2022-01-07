; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_append_flush_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_append_flush_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32, %struct.r5l_io_unit*, %struct.TYPE_3__* }
%struct.r5l_io_unit = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.mddev* }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i64 }
%struct.r5l_payload_flush = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@R5LOG_PAYLOAD_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, i32)* @r5l_append_flush_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_append_flush_payload(%struct.r5l_log* %0, i32 %1) #0 {
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca %struct.r5l_io_unit*, align 8
  %8 = alloca %struct.r5l_payload_flush*, align 8
  %9 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %11 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mddev*, %struct.mddev** %13, align 8
  store %struct.mddev* %14, %struct.mddev** %5, align 8
  %15 = load %struct.mddev*, %struct.mddev** %5, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load %struct.r5conf*, %struct.r5conf** %16, align 8
  store %struct.r5conf* %17, %struct.r5conf** %6, align 8
  %18 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %85

23:                                               ; preds = %2
  %24 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %25 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  store i32 36, i32* %9, align 4
  %27 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @r5l_get_meta(%struct.r5l_log* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %33 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %85

35:                                               ; preds = %23
  %36 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %37 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %36, i32 0, i32 1
  %38 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %37, align 8
  store %struct.r5l_io_unit* %38, %struct.r5l_io_unit** %7, align 8
  %39 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %7, align 8
  %40 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.r5l_payload_flush* @page_address(i32 %41)
  %43 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %7, align 8
  %44 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %42, i64 %46
  store %struct.r5l_payload_flush* %47, %struct.r5l_payload_flush** %8, align 8
  %48 = load i32, i32* @R5LOG_PAYLOAD_FLUSH, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %8, align 8
  %51 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = call i8* @cpu_to_le16(i32 0)
  %54 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %8, align 8
  %55 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = call i32 @cpu_to_le32(i32 4)
  %58 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %8, align 8
  %59 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @cpu_to_le64(i32 %60)
  %62 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %8, align 8
  %63 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %7, align 8
  %68 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %7, align 8
  %72 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %35
  %76 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %7, align 8
  %77 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %7, align 8
  %79 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %78, i32 0, i32 2
  %80 = call i32 @atomic_inc(i32* %79)
  br label %81

81:                                               ; preds = %75, %35
  %82 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %83 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %81, %31, %22
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @r5l_get_meta(%struct.r5l_log*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.r5l_payload_flush* @page_address(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
