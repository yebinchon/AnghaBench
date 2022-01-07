; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_user_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_user_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.sbefifo_user* }
%struct.sbefifo_user = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sbefifo_user_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbefifo_user_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.sbefifo_user*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.sbefifo_user*, %struct.sbefifo_user** %8, align 8
  store %struct.sbefifo_user* %9, %struct.sbefifo_user** %6, align 8
  %10 = load %struct.sbefifo_user*, %struct.sbefifo_user** %6, align 8
  %11 = icmp ne %struct.sbefifo_user* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.sbefifo_user*, %struct.sbefifo_user** %6, align 8
  %17 = call i32 @sbefifo_release_command(%struct.sbefifo_user* %16)
  %18 = load %struct.sbefifo_user*, %struct.sbefifo_user** %6, align 8
  %19 = getelementptr inbounds %struct.sbefifo_user, %struct.sbefifo_user* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @free_page(i64 %20)
  %22 = load %struct.sbefifo_user*, %struct.sbefifo_user** %6, align 8
  %23 = call i32 @kfree(%struct.sbefifo_user* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @sbefifo_release_command(%struct.sbefifo_user*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.sbefifo_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
