; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_lock_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_lock_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_host = type { i32, i32 (i32, i32*)*, i32 }

@IDE_HFLAG_SERIALIZE = common dso_local global i32 0, align 4
@IDE_HOST_BUSY = common dso_local global i32 0, align 4
@ide_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ide_host*, i32*)* @ide_lock_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_lock_host(%struct.ide_host* %0, i32* %1) #0 {
  %3 = alloca %struct.ide_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ide_host* %0, %struct.ide_host** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %7 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IDE_HFLAG_SERIALIZE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i32, i32* @IDE_HOST_BUSY, align 4
  %14 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %15 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %14, i32 0, i32 2
  %16 = call i32 @test_and_set_bit_lock(i32 %13, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %21 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %20, i32 0, i32 1
  %22 = load i32 (i32, i32*)*, i32 (i32, i32*)** %21, align 8
  %23 = icmp ne i32 (i32, i32*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.ide_host*, %struct.ide_host** %3, align 8
  %26 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %25, i32 0, i32 1
  %27 = load i32 (i32, i32*)*, i32 (i32, i32*)** %26, align 8
  %28 = load i32, i32* @ide_intr, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 %27(i32 %28, i32* %29)
  br label %31

31:                                               ; preds = %24, %19
  br label %32

32:                                               ; preds = %31, %12
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
