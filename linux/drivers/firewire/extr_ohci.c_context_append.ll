; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_context_append.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_context_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, %struct.descriptor*, %struct.TYPE_2__*, %struct.descriptor_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.descriptor_buffer = type { i32, i32, %struct.descriptor* }
%struct.descriptor = type { i32, i8* }

@QUIRK_IR_WAKE = common dso_local global i32 0, align 4
@DESCRIPTOR_CMD = common dso_local global i32 0, align 4
@DESCRIPTOR_INPUT_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.descriptor*, i32, i32)* @context_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_append(%struct.context* %0, %struct.descriptor* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.descriptor_buffer*, align 8
  %11 = alloca %struct.descriptor*, align 8
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.descriptor* %1, %struct.descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.context*, %struct.context** %5, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 3
  %14 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %13, align 8
  store %struct.descriptor_buffer* %14, %struct.descriptor_buffer** %10, align 8
  %15 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %10, align 8
  %16 = getelementptr inbounds %struct.descriptor_buffer, %struct.descriptor_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %20 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %10, align 8
  %21 = getelementptr inbounds %struct.descriptor_buffer, %struct.descriptor_buffer* %20, i32 0, i32 2
  %22 = load %struct.descriptor*, %struct.descriptor** %21, align 8
  %23 = ptrtoint %struct.descriptor* %19 to i64
  %24 = ptrtoint %struct.descriptor* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 16
  %27 = mul i64 %26, 16
  %28 = add i64 %18, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 16
  %35 = load %struct.descriptor_buffer*, %struct.descriptor_buffer** %10, align 8
  %36 = getelementptr inbounds %struct.descriptor_buffer, %struct.descriptor_buffer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = call i32 (...) @wmb()
  %42 = load %struct.context*, %struct.context** %5, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 1
  %44 = load %struct.descriptor*, %struct.descriptor** %43, align 8
  %45 = load %struct.context*, %struct.context** %5, align 8
  %46 = getelementptr inbounds %struct.context, %struct.context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.descriptor* @find_branch_descriptor(%struct.descriptor* %44, i32 %47)
  store %struct.descriptor* %48, %struct.descriptor** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.descriptor*, %struct.descriptor** %11, align 8
  %54 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.context*, %struct.context** %5, align 8
  %56 = getelementptr inbounds %struct.context, %struct.context* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @QUIRK_IR_WAKE, align 4
  %61 = and i32 %59, %60
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %4
  %65 = load %struct.descriptor*, %struct.descriptor** %11, align 8
  %66 = load %struct.context*, %struct.context** %5, align 8
  %67 = getelementptr inbounds %struct.context, %struct.context* %66, i32 0, i32 1
  %68 = load %struct.descriptor*, %struct.descriptor** %67, align 8
  %69 = icmp ne %struct.descriptor* %65, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  %71 = load %struct.context*, %struct.context** %5, align 8
  %72 = getelementptr inbounds %struct.context, %struct.context* %71, i32 0, i32 1
  %73 = load %struct.descriptor*, %struct.descriptor** %72, align 8
  %74 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DESCRIPTOR_CMD, align 4
  %77 = call i32 @cpu_to_le16(i32 %76)
  %78 = and i32 %75, %77
  %79 = load i32, i32* @DESCRIPTOR_INPUT_MORE, align 4
  %80 = call i32 @cpu_to_le16(i32 %79)
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.context*, %struct.context** %5, align 8
  %88 = getelementptr inbounds %struct.context, %struct.context* %87, i32 0, i32 1
  %89 = load %struct.descriptor*, %struct.descriptor** %88, align 8
  %90 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %89, i32 0, i32 1
  store i8* %86, i8** %90, align 8
  br label %91

91:                                               ; preds = %82, %70, %64, %4
  %92 = load %struct.descriptor*, %struct.descriptor** %6, align 8
  %93 = load %struct.context*, %struct.context** %5, align 8
  %94 = getelementptr inbounds %struct.context, %struct.context* %93, i32 0, i32 1
  store %struct.descriptor* %92, %struct.descriptor** %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.context*, %struct.context** %5, align 8
  %97 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local %struct.descriptor* @find_branch_descriptor(%struct.descriptor*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
