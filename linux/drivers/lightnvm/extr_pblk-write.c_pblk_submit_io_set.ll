; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_submit_io_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_submit_io_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"could not setup write request: %d\0A\00", align 1
@NVM_IO_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"data I/O submission failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"metadata I/O submission failed: %d\00", align 1
@NVM_IO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.nvm_rq*)* @pblk_submit_io_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_submit_io_set(%struct.pblk* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.nvm_rq*, align 8
  %6 = alloca %struct.ppa_addr, align 4
  %7 = alloca %struct.pblk_line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pblk_line*, align 8
  %10 = alloca %struct.nvm_tgt_dev*, align 8
  %11 = alloca %struct.nvm_geo*, align 8
  %12 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %5, align 8
  %13 = call i32 @pblk_ppa_set_empty(%struct.ppa_addr* %6)
  %14 = load %struct.pblk*, %struct.pblk** %4, align 8
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %16 = call i32 @pblk_setup_w_rq(%struct.pblk* %14, %struct.nvm_rq* %15, %struct.ppa_addr* %6)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.pblk*, %struct.pblk** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @pblk_err(%struct.pblk* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @NVM_IO_ERR, align 4
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %2
  %25 = load %struct.pblk*, %struct.pblk** %4, align 8
  %26 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %27 = call %struct.pblk_line* @pblk_should_submit_meta_io(%struct.pblk* %25, %struct.nvm_rq* %26)
  store %struct.pblk_line* %27, %struct.pblk_line** %7, align 8
  %28 = load %struct.pblk*, %struct.pblk** %4, align 8
  %29 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %30 = call i32 @pblk_submit_io(%struct.pblk* %28, %struct.nvm_rq* %29, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.pblk*, %struct.pblk** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @pblk_err(%struct.pblk* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @NVM_IO_ERR, align 4
  store i32 %37, i32* %3, align 4
  br label %91

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pblk_ppa_empty(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %38
  %44 = load %struct.pblk*, %struct.pblk** %4, align 8
  %45 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pblk_blk_erase_async(%struct.pblk* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load %struct.pblk*, %struct.pblk** %4, align 8
  %51 = call %struct.pblk_line* @pblk_line_get_erase(%struct.pblk* %50)
  store %struct.pblk_line* %51, %struct.pblk_line** %9, align 8
  %52 = load %struct.pblk*, %struct.pblk** %4, align 8
  %53 = getelementptr inbounds %struct.pblk, %struct.pblk* %52, i32 0, i32 0
  %54 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %53, align 8
  store %struct.nvm_tgt_dev* %54, %struct.nvm_tgt_dev** %10, align 8
  %55 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %10, align 8
  %56 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %55, i32 0, i32 0
  store %struct.nvm_geo* %56, %struct.nvm_geo** %11, align 8
  %57 = load %struct.pblk_line*, %struct.pblk_line** %9, align 8
  %58 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %57, i32 0, i32 1
  %59 = call i32 @atomic_inc(i32* %58)
  %60 = load %struct.nvm_geo*, %struct.nvm_geo** %11, align 8
  %61 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %60, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.pblk_line*, %struct.pblk_line** %9, align 8
  %66 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @test_and_clear_bit(i32 %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @WARN_ON(i32 %71)
  br label %73

73:                                               ; preds = %49, %43
  br label %74

74:                                               ; preds = %73, %38
  %75 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %76 = icmp ne %struct.pblk_line* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.pblk*, %struct.pblk** %4, align 8
  %79 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %80 = call i32 @pblk_submit_meta_io(%struct.pblk* %78, %struct.pblk_line* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.pblk*, %struct.pblk** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @pblk_err(%struct.pblk* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @NVM_IO_ERR, align 4
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %74
  %90 = load i32, i32* @NVM_IO_OK, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %83, %33, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @pblk_ppa_set_empty(%struct.ppa_addr*) #1

declare dso_local i32 @pblk_setup_w_rq(%struct.pblk*, %struct.nvm_rq*, %struct.ppa_addr*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local %struct.pblk_line* @pblk_should_submit_meta_io(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_submit_io(%struct.pblk*, %struct.nvm_rq*, i32*) #1

declare dso_local i32 @pblk_ppa_empty(i32) #1

declare dso_local i64 @pblk_blk_erase_async(%struct.pblk*, i32) #1

declare dso_local %struct.pblk_line* @pblk_line_get_erase(%struct.pblk*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @pblk_submit_meta_io(%struct.pblk*, %struct.pblk_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
