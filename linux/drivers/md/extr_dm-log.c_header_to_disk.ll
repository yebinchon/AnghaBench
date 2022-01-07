; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_header_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_header_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_header_core = type { i32, i32, i32 }
%struct.log_header_disk = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.log_header_core*, %struct.log_header_disk*)* @header_to_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @header_to_disk(%struct.log_header_core* %0, %struct.log_header_disk* %1) #0 {
  %3 = alloca %struct.log_header_core*, align 8
  %4 = alloca %struct.log_header_disk*, align 8
  store %struct.log_header_core* %0, %struct.log_header_core** %3, align 8
  store %struct.log_header_disk* %1, %struct.log_header_disk** %4, align 8
  %5 = load %struct.log_header_core*, %struct.log_header_core** %3, align 8
  %6 = getelementptr inbounds %struct.log_header_core, %struct.log_header_core* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @cpu_to_le32(i32 %7)
  %9 = load %struct.log_header_disk*, %struct.log_header_disk** %4, align 8
  %10 = getelementptr inbounds %struct.log_header_disk, %struct.log_header_disk* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.log_header_core*, %struct.log_header_core** %3, align 8
  %12 = getelementptr inbounds %struct.log_header_core, %struct.log_header_core* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le32(i32 %13)
  %15 = load %struct.log_header_disk*, %struct.log_header_disk** %4, align 8
  %16 = getelementptr inbounds %struct.log_header_disk, %struct.log_header_disk* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.log_header_core*, %struct.log_header_core** %3, align 8
  %18 = getelementptr inbounds %struct.log_header_core, %struct.log_header_core* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu_to_le64(i32 %19)
  %21 = load %struct.log_header_disk*, %struct.log_header_disk** %4, align 8
  %22 = getelementptr inbounds %struct.log_header_disk, %struct.log_header_disk* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
