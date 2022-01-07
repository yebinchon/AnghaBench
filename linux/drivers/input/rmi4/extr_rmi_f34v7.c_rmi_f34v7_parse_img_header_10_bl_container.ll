; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_parse_img_header_10_bl_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_parse_img_header_10_bl_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.container_descriptor = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f34_data*, i8*)* @rmi_f34v7_parse_img_header_10_bl_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_f34v7_parse_img_header_10_bl_container(%struct.f34_data* %0, i8* %1) #0 {
  %3 = alloca %struct.f34_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.container_descriptor*, align 8
  store %struct.f34_data* %0, %struct.f34_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %13 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %85, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %20
  %25 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %26 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @get_unaligned_le32(i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = bitcast i8* %39 to %struct.container_descriptor*
  store %struct.container_descriptor* %40, %struct.container_descriptor** %11, align 8
  %41 = load %struct.container_descriptor*, %struct.container_descriptor** %11, align 8
  %42 = getelementptr inbounds %struct.container_descriptor, %struct.container_descriptor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.container_descriptor*, %struct.container_descriptor** %11, align 8
  %47 = getelementptr inbounds %struct.container_descriptor, %struct.container_descriptor* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %45, i64 %50
  store i8* %51, i8** %10, align 8
  %52 = load %struct.container_descriptor*, %struct.container_descriptor** %11, align 8
  %53 = getelementptr inbounds %struct.container_descriptor, %struct.container_descriptor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %83 [
    i32 131, label %57
    i32 128, label %57
    i32 130, label %70
    i32 129, label %70
  ]

57:                                               ; preds = %24, %24
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %60 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i8* %58, i8** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %66 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 8
  br label %84

70:                                               ; preds = %24, %24
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %73 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i8* %71, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.f34_data*, %struct.f34_data** %3, align 8
  %79 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 8
  br label %84

83:                                               ; preds = %24
  br label %84

84:                                               ; preds = %83, %70, %57
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %20

88:                                               ; preds = %20
  ret void
}

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
