; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_cnr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_read_cnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }

@DSTATUS = common dso_local global i32 0, align 4
@LOCK_DEFINITIF_FIELD = common dso_local global i32 0, align 4
@NNOSPLHT1 = common dso_local global i32 0, align 4
@NOSPLHT_NORMED_FIELD = common dso_local global i32 0, align 4
@NNOSPLHT0 = common dso_local global i32 0, align 4
@stv090x_s2cn_tab = common dso_local global %struct.TYPE_5__* null, align 8
@NOSDATAT1 = common dso_local global i32 0, align 4
@NOSDATAT_UNNORMED_FIELD = common dso_local global i32 0, align 4
@NOSDATAT0 = common dso_local global i32 0, align 4
@stv090x_s1cn_tab = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv090x_read_cnr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_read_cnr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %17, align 8
  store %struct.stv090x_state* %18, %struct.stv090x_state** %5, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %20 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %156 [
    i32 128, label %22
    i32 129, label %91
    i32 130, label %91
  ]

22:                                               ; preds = %2
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %24 = load i32, i32* @DSTATUS, align 4
  %25 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %28 = call i8* @STV090x_GETFIELD_Px(i32 %26, i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %90

31:                                               ; preds = %22
  %32 = call i32 @msleep(i32 5)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %57, %31
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %38 = load i32, i32* @NNOSPLHT1, align 4
  %39 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NOSPLHT_NORMED_FIELD, align 4
  %42 = call i8* @STV090x_GETFIELD_Px(i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %45 = load i32, i32* @NNOSPLHT0, align 4
  %46 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NOSPLHT_NORMED_FIELD, align 4
  %49 = call i8* @STV090x_GETFIELD_Px(i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @MAKEWORD16(i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = call i32 @msleep(i32 1)
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load i32, i32* %12, align 4
  %62 = sdiv i32 %61, 16
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s2cn_tab, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %63)
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s2cn_tab, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s2cn_tab, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %71, %75
  store i32 %76, i32* %14, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s2cn_tab, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @stv090x_table_lookup(%struct.TYPE_5__* %77, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %85, 65535
  %87 = load i32, i32* %14, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i32*, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %22
  br label %157

91:                                               ; preds = %2, %2
  %92 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %93 = load i32, i32* @DSTATUS, align 4
  %94 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %97 = call i8* @STV090x_GETFIELD_Px(i32 %95, i32 %96)
  store i8* %97, i8** %13, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %155

100:                                              ; preds = %91
  %101 = call i32 @msleep(i32 5)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %126, %100
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %107 = load i32, i32* @NOSDATAT1, align 4
  %108 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %106, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @NOSDATAT_UNNORMED_FIELD, align 4
  %111 = call i8* @STV090x_GETFIELD_Px(i32 %109, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %11, align 4
  %113 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %114 = load i32, i32* @NOSDATAT0, align 4
  %115 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @NOSDATAT_UNNORMED_FIELD, align 4
  %118 = call i8* @STV090x_GETFIELD_Px(i32 %116, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @MAKEWORD16(i32 %120, i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = call i32 @msleep(i32 1)
  br label %126

126:                                              ; preds = %105
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %102

129:                                              ; preds = %102
  %130 = load i32, i32* %12, align 4
  %131 = sdiv i32 %130, 16
  store i32 %131, i32* %12, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s1cn_tab, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %132)
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s1cn_tab, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s1cn_tab, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %140, %144
  store i32 %145, i32* %14, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stv090x_s1cn_tab, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @stv090x_table_lookup(%struct.TYPE_5__* %146, i32 %147, i32 %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = mul nsw i32 %150, 65535
  %152 = load i32, i32* %14, align 4
  %153 = sdiv i32 %151, %152
  %154 = load i32*, i32** %4, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %129, %91
  br label %157

156:                                              ; preds = %2
  br label %157

157:                                              ; preds = %156, %155, %90
  ret i32 0
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i8* @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @stv090x_table_lookup(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
