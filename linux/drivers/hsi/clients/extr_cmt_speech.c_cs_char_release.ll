; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_char_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_char_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.cs_char* }
%struct.cs_char = type { i32, i64, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cs_char_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_char_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cs_char*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.cs_char*, %struct.cs_char** %7, align 8
  store %struct.cs_char* %8, %struct.cs_char** %5, align 8
  %9 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %10 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @cs_hsi_stop(i32* %11)
  %13 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %14 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %17 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %19 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @free_page(i32 %20)
  %22 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %23 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %22, i32 0, i32 3
  %24 = call i32 @cs_free_char_queue(i32* %23)
  %25 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %26 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %25, i32 0, i32 2
  %27 = call i32 @cs_free_char_queue(i32* %26)
  %28 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %29 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %31 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  ret i32 0
}

declare dso_local i32 @cs_hsi_stop(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @free_page(i32) #1

declare dso_local i32 @cs_free_char_queue(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
