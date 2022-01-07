; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_read_disk_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_read_disk_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"md: disabled device %s, could not read superblock.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i32)* @read_disk_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_disk_sb(%struct.md_rdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @BDEVNAME_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %14 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REQ_OP_READ, align 4
  %25 = call i32 @sync_page_io(%struct.md_rdev* %19, i32 0, i32 %20, i32 %23, i32 %24, i32 0, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %30 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %39

31:                                               ; preds = %27
  %32 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %33 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bdevname(i32 %34, i8* %12)
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %28, %17
  %40 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sync_page_io(%struct.md_rdev*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
