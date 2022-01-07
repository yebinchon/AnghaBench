; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_error_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_error_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_cmd = type { i32, i32, i32, i64 }

@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ide_cmd*)* @ide_cd_error_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_error_cmd(i32* %0, %struct.ide_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ide_cmd*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %5, align 8
  %7 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %8 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @BLK_STS_OK, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ide_complete_rq(i32* %32, i32 %33, i32 %34)
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ide_complete_rq(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
