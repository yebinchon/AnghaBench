; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_append_payload_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_append_payload_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.r5l_io_unit* }
%struct.r5l_io_unit = type { i32, i32 }
%struct.r5l_payload_data_parity = type { i8**, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, i32, i32, i32, i32, i32)* @r5l_append_payload_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_append_payload_meta(%struct.r5l_log* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.r5l_log*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.r5l_io_unit*, align 8
  %14 = alloca %struct.r5l_payload_data_parity*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %16 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %15, i32 0, i32 0
  %17 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %16, align 8
  store %struct.r5l_io_unit* %17, %struct.r5l_io_unit** %13, align 8
  %18 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %19 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.r5l_payload_data_parity* @page_address(i32 %20)
  %22 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %23 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %21, i64 %25
  store %struct.r5l_payload_data_parity* %26, %struct.r5l_payload_data_parity** %14, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %14, align 8
  %30 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = call i8* @cpu_to_le16(i32 0)
  %33 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %14, align 8
  %34 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = add nsw i32 1, %40
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = sub nsw i32 %42, 9
  %44 = shl i32 %41, %43
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %14, align 8
  %47 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @cpu_to_le64(i32 %48)
  %50 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %14, align 8
  %51 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %14, align 8
  %55 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %6
  %61 = load i32, i32* %11, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %14, align 8
  %64 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %60, %6
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 1, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = add i64 40, %75
  %77 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %78 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  ret void
}

declare dso_local %struct.r5l_payload_data_parity* @page_address(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
