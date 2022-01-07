; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmsch_v1_0.h_mmsch_v1_0_insert_direct_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmsch_v1_0.h_mmsch_v1_0_insert_direct_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmsch_v1_0_cmd_direct_polling = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmsch_v1_0_cmd_direct_polling*, i8**, i8*, i8*, i8*)* @mmsch_v1_0_insert_direct_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmsch_v1_0_insert_direct_poll(%struct.mmsch_v1_0_cmd_direct_polling* %0, i8** %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.mmsch_v1_0_cmd_direct_polling*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.mmsch_v1_0_cmd_direct_polling* %0, %struct.mmsch_v1_0_cmd_direct_polling** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load %struct.mmsch_v1_0_cmd_direct_polling*, %struct.mmsch_v1_0_cmd_direct_polling** %6, align 8
  %13 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_polling, %struct.mmsch_v1_0_cmd_direct_polling* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.mmsch_v1_0_cmd_direct_polling*, %struct.mmsch_v1_0_cmd_direct_polling** %6, align 8
  %17 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_polling, %struct.mmsch_v1_0_cmd_direct_polling* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.mmsch_v1_0_cmd_direct_polling*, %struct.mmsch_v1_0_cmd_direct_polling** %6, align 8
  %20 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_polling, %struct.mmsch_v1_0_cmd_direct_polling* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8**, i8*** %7, align 8
  %22 = bitcast i8** %21 to i8*
  %23 = load %struct.mmsch_v1_0_cmd_direct_polling*, %struct.mmsch_v1_0_cmd_direct_polling** %6, align 8
  %24 = call i32 @memcpy(i8* %22, %struct.mmsch_v1_0_cmd_direct_polling* %23, i32 24)
  ret void
}

declare dso_local i32 @memcpy(i8*, %struct.mmsch_v1_0_cmd_direct_polling*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
