; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_mpegts_configure_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_mpegts_configure_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { i64, i64, i64, i64, i64 }

@FEC_OC_IPR_INVERT_MD7__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD6__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD5__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD4__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD3__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD2__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD1__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD0__M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FEC_OC_IPR_INVERT_MERR__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MSTRT__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MVAL__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MCLK__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*)* @mpegts_configure_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpegts_configure_polarity(%struct.drxk_state* %0) #0 {
  %2 = alloca %struct.drxk_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drxk_state* %0, %struct.drxk_state** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @FEC_OC_IPR_INVERT_MD7__M, align 4
  %6 = load i32, i32* @FEC_OC_IPR_INVERT_MD6__M, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @FEC_OC_IPR_INVERT_MD5__M, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FEC_OC_IPR_INVERT_MD4__M, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FEC_OC_IPR_INVERT_MD3__M, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FEC_OC_IPR_INVERT_MD2__M, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FEC_OC_IPR_INVERT_MD1__M, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FEC_OC_IPR_INVERT_MD0__M, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %26 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %1
  %34 = load i32, i32* @FEC_OC_IPR_INVERT_MERR__M, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %39 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @FEC_OC_IPR_INVERT_MERR__M, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i32, i32* @FEC_OC_IPR_INVERT_MSTRT__M, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %52 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @FEC_OC_IPR_INVERT_MSTRT__M, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32, i32* @FEC_OC_IPR_INVERT_MVAL__M, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %65 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @FEC_OC_IPR_INVERT_MVAL__M, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32, i32* @FEC_OC_IPR_INVERT_MCLK__M, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %78 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, i32* @FEC_OC_IPR_INVERT_MCLK__M, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %72
  %86 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %87 = load i32, i32* @FEC_OC_IPR_INVERT__A, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @write16(%struct.drxk_state* %86, i32 %87, i32 %88)
  ret i32 %89
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @write16(%struct.drxk_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
