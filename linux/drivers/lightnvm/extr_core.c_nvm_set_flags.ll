; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_set_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_geo = type { i64, i32 }
%struct.nvm_rq = type { i64, i64 }

@NVM_OCSSD_SPEC_20 = common dso_local global i64 0, align 8
@NVM_OP_PREAD = common dso_local global i64 0, align 8
@NVM_IO_SCRAMBLE_ENABLE = common dso_local global i32 0, align 4
@NVM_IO_SUSPEND = common dso_local global i32 0, align 4
@NVM_OP_PWRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_geo*, %struct.nvm_rq*)* @nvm_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_set_flags(%struct.nvm_geo* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvm_geo*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca i32, align 4
  store %struct.nvm_geo* %0, %struct.nvm_geo** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %8 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NVM_OCSSD_SPEC_20, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %15 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %20 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %13
  %26 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %27 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NVM_OP_PREAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* @NVM_IO_SCRAMBLE_ENABLE, align 4
  %33 = load i32, i32* @NVM_IO_SUSPEND, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %25
  %38 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %39 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NVM_OP_PWRITE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @NVM_IO_SCRAMBLE_ENABLE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %37
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
