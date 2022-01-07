; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_new_dcb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_new_dcb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcb_output = type { i32 }
%struct.dcb_table = type { i64, %struct.dcb_output* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dcb_output* (%struct.dcb_table*)* @new_dcb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dcb_output* @new_dcb_entry(%struct.dcb_table* %0) #0 {
  %2 = alloca %struct.dcb_table*, align 8
  %3 = alloca %struct.dcb_output*, align 8
  store %struct.dcb_table* %0, %struct.dcb_table** %2, align 8
  %4 = load %struct.dcb_table*, %struct.dcb_table** %2, align 8
  %5 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %4, i32 0, i32 1
  %6 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %7 = load %struct.dcb_table*, %struct.dcb_table** %2, align 8
  %8 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %6, i64 %9
  store %struct.dcb_output* %10, %struct.dcb_output** %3, align 8
  %11 = load %struct.dcb_output*, %struct.dcb_output** %3, align 8
  %12 = call i32 @memset(%struct.dcb_output* %11, i32 0, i32 4)
  %13 = load %struct.dcb_table*, %struct.dcb_table** %2, align 8
  %14 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = trunc i64 %15 to i32
  %18 = load %struct.dcb_output*, %struct.dcb_output** %3, align 8
  %19 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dcb_output*, %struct.dcb_output** %3, align 8
  ret %struct.dcb_output* %20
}

declare dso_local i32 @memset(%struct.dcb_output*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
