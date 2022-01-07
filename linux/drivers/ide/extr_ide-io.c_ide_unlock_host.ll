; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_unlock_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_unlock_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_host = type { i32, i32, i32 (...)* }

@IDE_HFLAG_SERIALIZE = common dso_local global i32 0, align 4
@IDE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_host*)* @ide_unlock_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_unlock_host(%struct.ide_host* %0) #0 {
  %2 = alloca %struct.ide_host*, align 8
  store %struct.ide_host* %0, %struct.ide_host** %2, align 8
  %3 = load %struct.ide_host*, %struct.ide_host** %2, align 8
  %4 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IDE_HFLAG_SERIALIZE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.ide_host*, %struct.ide_host** %2, align 8
  %11 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %10, i32 0, i32 2
  %12 = load i32 (...)*, i32 (...)** %11, align 8
  %13 = icmp ne i32 (...)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.ide_host*, %struct.ide_host** %2, align 8
  %16 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %15, i32 0, i32 2
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* @IDE_HOST_BUSY, align 4
  %21 = load %struct.ide_host*, %struct.ide_host** %2, align 8
  %22 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %21, i32 0, i32 1
  %23 = call i32 @clear_bit_unlock(i32 %20, i32* %22)
  br label %24

24:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
