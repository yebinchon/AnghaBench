; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_adp_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_adp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib3000mc_state*, i32)* @dib3000mc_set_adp_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib3000mc_set_adp_cfg(%struct.dib3000mc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib3000mc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %24 [
    i32 128, label %9
    i32 130, label %14
    i32 129, label %19
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 2458, i32* %10, align 16
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 32686, i32* %11, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 819, i32* %12, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 32752, i32* %13, align 4
  br label %24

14:                                               ; preds = %2
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 573, i32* %15, align 16
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 32735, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 164, i32* %17, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 32752, i32* %18, align 4
  br label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 328, i32* %20, align 16
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 32752, i32* %21, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 164, i32* %22, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 32760, i32* %23, align 4
  br label %24

24:                                               ; preds = %2, %19, %14, %9
  store i32 129, i32* %6, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 133
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 129
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %29, i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %25

40:                                               ; preds = %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
