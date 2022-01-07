; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i32, i32, i32, i64, i64, i32 }

@RCVMODE_NONE = common dso_local global i32 0, align 4
@RSTV0910_MID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RSTV0910_P1_I2CRPT = common dso_local global i32 0, align 4
@RSTV0910_P2_I2CRPT = common dso_local global i32 0, align 4
@RSTV0910_I2CCFG = common dso_local global i32 0, align 4
@RSTV0910_OUTCFG = common dso_local global i32 0, align 4
@RSTV0910_PADCFG = common dso_local global i32 0, align 4
@RSTV0910_SYNTCTRL = common dso_local global i32 0, align 4
@RSTV0910_TSGENERAL = common dso_local global i32 0, align 4
@RSTV0910_CFGEXT = common dso_local global i32 0, align 4
@RSTV0910_GENCFG = common dso_local global i32 0, align 4
@RSTV0910_P1_TNRCFG2 = common dso_local global i32 0, align 4
@RSTV0910_P2_TNRCFG2 = common dso_local global i32 0, align 4
@RSTV0910_P1_CAR3CFG = common dso_local global i32 0, align 4
@RSTV0910_P2_CAR3CFG = common dso_local global i32 0, align 4
@RSTV0910_P1_DMDCFG4 = common dso_local global i32 0, align 4
@RSTV0910_P2_DMDCFG4 = common dso_local global i32 0, align 4
@RSTV0910_TSTRES0 = common dso_local global i32 0, align 4
@RSTV0910_P1_TSPIDFLT1 = common dso_local global i32 0, align 4
@RSTV0910_P2_TSPIDFLT1 = common dso_local global i32 0, align 4
@RSTV0910_P1_TMGCFG2 = common dso_local global i32 0, align 4
@RSTV0910_P2_TMGCFG2 = common dso_local global i32 0, align 4
@RSTV0910_P1_TSCFGH = common dso_local global i32 0, align 4
@RSTV0910_P1_TSCFGM = common dso_local global i32 0, align 4
@RSTV0910_P1_TSCFGL = common dso_local global i32 0, align 4
@RSTV0910_P1_TSSPEED = common dso_local global i32 0, align 4
@RSTV0910_P2_TSCFGH = common dso_local global i32 0, align 4
@RSTV0910_P2_TSCFGM = common dso_local global i32 0, align 4
@RSTV0910_P2_TSCFGL = common dso_local global i32 0, align 4
@RSTV0910_P2_TSSPEED = common dso_local global i32 0, align 4
@RSTV0910_P1_TSINSDELM = common dso_local global i32 0, align 4
@RSTV0910_P1_TSINSDELL = common dso_local global i32 0, align 4
@RSTV0910_P2_TSINSDELM = common dso_local global i32 0, align 4
@RSTV0910_P2_TSINSDELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe(%struct.stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv*, align 8
  %4 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %3, align 8
  %5 = load i32, i32* @RCVMODE_NONE, align 4
  %6 = load %struct.stv*, %struct.stv** %3, align 8
  %7 = getelementptr inbounds %struct.stv, %struct.stv* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 8
  %8 = load %struct.stv*, %struct.stv** %3, align 8
  %9 = getelementptr inbounds %struct.stv, %struct.stv* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.stv*, %struct.stv** %3, align 8
  %11 = load i32, i32* @RSTV0910_MID, align 4
  %12 = call i64 @read_reg(%struct.stv* %10, i32 %11, i32* %4)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %204

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 81
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %204

23:                                               ; preds = %17
  %24 = load %struct.stv*, %struct.stv** %3, align 8
  %25 = load i32, i32* @RSTV0910_P1_I2CRPT, align 4
  %26 = call i32 @write_reg(%struct.stv* %24, i32 %25, i32 36)
  %27 = load %struct.stv*, %struct.stv** %3, align 8
  %28 = load i32, i32* @RSTV0910_P2_I2CRPT, align 4
  %29 = call i32 @write_reg(%struct.stv* %27, i32 %28, i32 36)
  %30 = load %struct.stv*, %struct.stv** %3, align 8
  %31 = load i32, i32* @RSTV0910_I2CCFG, align 4
  %32 = call i32 @write_reg(%struct.stv* %30, i32 %31, i32 136)
  %33 = load %struct.stv*, %struct.stv** %3, align 8
  %34 = load i32, i32* @RSTV0910_OUTCFG, align 4
  %35 = call i32 @write_reg(%struct.stv* %33, i32 %34, i32 0)
  %36 = load %struct.stv*, %struct.stv** %3, align 8
  %37 = load i32, i32* @RSTV0910_PADCFG, align 4
  %38 = call i32 @write_reg(%struct.stv* %36, i32 %37, i32 5)
  %39 = load %struct.stv*, %struct.stv** %3, align 8
  %40 = load i32, i32* @RSTV0910_SYNTCTRL, align 4
  %41 = call i32 @write_reg(%struct.stv* %39, i32 %40, i32 2)
  %42 = load %struct.stv*, %struct.stv** %3, align 8
  %43 = load i32, i32* @RSTV0910_TSGENERAL, align 4
  %44 = load %struct.stv*, %struct.stv** %3, align 8
  %45 = getelementptr inbounds %struct.stv, %struct.stv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @write_reg(%struct.stv* %42, i32 %43, i32 %46)
  %48 = load %struct.stv*, %struct.stv** %3, align 8
  %49 = load i32, i32* @RSTV0910_CFGEXT, align 4
  %50 = call i32 @write_reg(%struct.stv* %48, i32 %49, i32 2)
  %51 = load %struct.stv*, %struct.stv** %3, align 8
  %52 = getelementptr inbounds %struct.stv, %struct.stv* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %23
  %56 = load %struct.stv*, %struct.stv** %3, align 8
  %57 = load i32, i32* @RSTV0910_GENCFG, align 4
  %58 = call i32 @write_reg(%struct.stv* %56, i32 %57, i32 20)
  br label %63

59:                                               ; preds = %23
  %60 = load %struct.stv*, %struct.stv** %3, align 8
  %61 = load i32, i32* @RSTV0910_GENCFG, align 4
  %62 = call i32 @write_reg(%struct.stv* %60, i32 %61, i32 21)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.stv*, %struct.stv** %3, align 8
  %65 = load i32, i32* @RSTV0910_P1_TNRCFG2, align 4
  %66 = call i32 @write_reg(%struct.stv* %64, i32 %65, i32 2)
  %67 = load %struct.stv*, %struct.stv** %3, align 8
  %68 = load i32, i32* @RSTV0910_P2_TNRCFG2, align 4
  %69 = call i32 @write_reg(%struct.stv* %67, i32 %68, i32 130)
  %70 = load %struct.stv*, %struct.stv** %3, align 8
  %71 = load i32, i32* @RSTV0910_P1_CAR3CFG, align 4
  %72 = call i32 @write_reg(%struct.stv* %70, i32 %71, i32 2)
  %73 = load %struct.stv*, %struct.stv** %3, align 8
  %74 = load i32, i32* @RSTV0910_P2_CAR3CFG, align 4
  %75 = call i32 @write_reg(%struct.stv* %73, i32 %74, i32 2)
  %76 = load %struct.stv*, %struct.stv** %3, align 8
  %77 = load i32, i32* @RSTV0910_P1_DMDCFG4, align 4
  %78 = call i32 @write_reg(%struct.stv* %76, i32 %77, i32 4)
  %79 = load %struct.stv*, %struct.stv** %3, align 8
  %80 = load i32, i32* @RSTV0910_P2_DMDCFG4, align 4
  %81 = call i32 @write_reg(%struct.stv* %79, i32 %80, i32 4)
  %82 = load %struct.stv*, %struct.stv** %3, align 8
  %83 = load i32, i32* @RSTV0910_TSTRES0, align 4
  %84 = call i32 @write_reg(%struct.stv* %82, i32 %83, i32 128)
  %85 = load %struct.stv*, %struct.stv** %3, align 8
  %86 = load i32, i32* @RSTV0910_TSTRES0, align 4
  %87 = call i32 @write_reg(%struct.stv* %85, i32 %86, i32 0)
  %88 = load %struct.stv*, %struct.stv** %3, align 8
  %89 = load i32, i32* @RSTV0910_P1_TSPIDFLT1, align 4
  %90 = call i32 @write_reg(%struct.stv* %88, i32 %89, i32 0)
  %91 = load %struct.stv*, %struct.stv** %3, align 8
  %92 = load i32, i32* @RSTV0910_P2_TSPIDFLT1, align 4
  %93 = call i32 @write_reg(%struct.stv* %91, i32 %92, i32 0)
  %94 = load %struct.stv*, %struct.stv** %3, align 8
  %95 = load i32, i32* @RSTV0910_P1_TMGCFG2, align 4
  %96 = call i32 @write_reg(%struct.stv* %94, i32 %95, i32 128)
  %97 = load %struct.stv*, %struct.stv** %3, align 8
  %98 = load i32, i32* @RSTV0910_P2_TMGCFG2, align 4
  %99 = call i32 @write_reg(%struct.stv* %97, i32 %98, i32 128)
  %100 = load %struct.stv*, %struct.stv** %3, align 8
  %101 = call i32 @set_mclock(%struct.stv* %100, i32 135000000)
  %102 = load %struct.stv*, %struct.stv** %3, align 8
  %103 = load i32, i32* @RSTV0910_P1_TSCFGH, align 4
  %104 = load %struct.stv*, %struct.stv** %3, align 8
  %105 = getelementptr inbounds %struct.stv, %struct.stv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, 1
  %108 = call i32 @write_reg(%struct.stv* %102, i32 %103, i32 %107)
  %109 = load %struct.stv*, %struct.stv** %3, align 8
  %110 = load i32, i32* @RSTV0910_P1_TSCFGH, align 4
  %111 = load %struct.stv*, %struct.stv** %3, align 8
  %112 = getelementptr inbounds %struct.stv, %struct.stv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @write_reg(%struct.stv* %109, i32 %110, i32 %113)
  %115 = load %struct.stv*, %struct.stv** %3, align 8
  %116 = load i32, i32* @RSTV0910_P1_TSCFGM, align 4
  %117 = call i32 @write_reg(%struct.stv* %115, i32 %116, i32 192)
  %118 = load %struct.stv*, %struct.stv** %3, align 8
  %119 = load i32, i32* @RSTV0910_P1_TSCFGL, align 4
  %120 = call i32 @write_reg(%struct.stv* %118, i32 %119, i32 32)
  %121 = load %struct.stv*, %struct.stv** %3, align 8
  %122 = load i32, i32* @RSTV0910_P1_TSSPEED, align 4
  %123 = load %struct.stv*, %struct.stv** %3, align 8
  %124 = getelementptr inbounds %struct.stv, %struct.stv* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @write_reg(%struct.stv* %121, i32 %122, i32 %125)
  %127 = load %struct.stv*, %struct.stv** %3, align 8
  %128 = load i32, i32* @RSTV0910_P2_TSCFGH, align 4
  %129 = load %struct.stv*, %struct.stv** %3, align 8
  %130 = getelementptr inbounds %struct.stv, %struct.stv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, 1
  %133 = call i32 @write_reg(%struct.stv* %127, i32 %128, i32 %132)
  %134 = load %struct.stv*, %struct.stv** %3, align 8
  %135 = load i32, i32* @RSTV0910_P2_TSCFGH, align 4
  %136 = load %struct.stv*, %struct.stv** %3, align 8
  %137 = getelementptr inbounds %struct.stv, %struct.stv* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @write_reg(%struct.stv* %134, i32 %135, i32 %138)
  %140 = load %struct.stv*, %struct.stv** %3, align 8
  %141 = load i32, i32* @RSTV0910_P2_TSCFGM, align 4
  %142 = call i32 @write_reg(%struct.stv* %140, i32 %141, i32 192)
  %143 = load %struct.stv*, %struct.stv** %3, align 8
  %144 = load i32, i32* @RSTV0910_P2_TSCFGL, align 4
  %145 = call i32 @write_reg(%struct.stv* %143, i32 %144, i32 32)
  %146 = load %struct.stv*, %struct.stv** %3, align 8
  %147 = load i32, i32* @RSTV0910_P2_TSSPEED, align 4
  %148 = load %struct.stv*, %struct.stv** %3, align 8
  %149 = getelementptr inbounds %struct.stv, %struct.stv* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @write_reg(%struct.stv* %146, i32 %147, i32 %150)
  %152 = load %struct.stv*, %struct.stv** %3, align 8
  %153 = load i32, i32* @RSTV0910_P1_TSCFGH, align 4
  %154 = load %struct.stv*, %struct.stv** %3, align 8
  %155 = getelementptr inbounds %struct.stv, %struct.stv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, 1
  %158 = call i32 @write_reg(%struct.stv* %152, i32 %153, i32 %157)
  %159 = load %struct.stv*, %struct.stv** %3, align 8
  %160 = load i32, i32* @RSTV0910_P2_TSCFGH, align 4
  %161 = load %struct.stv*, %struct.stv** %3, align 8
  %162 = getelementptr inbounds %struct.stv, %struct.stv* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, 1
  %165 = call i32 @write_reg(%struct.stv* %159, i32 %160, i32 %164)
  %166 = load %struct.stv*, %struct.stv** %3, align 8
  %167 = load i32, i32* @RSTV0910_P1_TSCFGH, align 4
  %168 = load %struct.stv*, %struct.stv** %3, align 8
  %169 = getelementptr inbounds %struct.stv, %struct.stv* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @write_reg(%struct.stv* %166, i32 %167, i32 %170)
  %172 = load %struct.stv*, %struct.stv** %3, align 8
  %173 = load i32, i32* @RSTV0910_P2_TSCFGH, align 4
  %174 = load %struct.stv*, %struct.stv** %3, align 8
  %175 = getelementptr inbounds %struct.stv, %struct.stv* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @write_reg(%struct.stv* %172, i32 %173, i32 %176)
  %178 = load %struct.stv*, %struct.stv** %3, align 8
  %179 = load i32, i32* @RSTV0910_P1_I2CRPT, align 4
  %180 = load %struct.stv*, %struct.stv** %3, align 8
  %181 = getelementptr inbounds %struct.stv, %struct.stv* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @write_reg(%struct.stv* %178, i32 %179, i32 %182)
  %184 = load %struct.stv*, %struct.stv** %3, align 8
  %185 = load i32, i32* @RSTV0910_P2_I2CRPT, align 4
  %186 = load %struct.stv*, %struct.stv** %3, align 8
  %187 = getelementptr inbounds %struct.stv, %struct.stv* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @write_reg(%struct.stv* %184, i32 %185, i32 %188)
  %190 = load %struct.stv*, %struct.stv** %3, align 8
  %191 = load i32, i32* @RSTV0910_P1_TSINSDELM, align 4
  %192 = call i32 @write_reg(%struct.stv* %190, i32 %191, i32 23)
  %193 = load %struct.stv*, %struct.stv** %3, align 8
  %194 = load i32, i32* @RSTV0910_P1_TSINSDELL, align 4
  %195 = call i32 @write_reg(%struct.stv* %193, i32 %194, i32 255)
  %196 = load %struct.stv*, %struct.stv** %3, align 8
  %197 = load i32, i32* @RSTV0910_P2_TSINSDELM, align 4
  %198 = call i32 @write_reg(%struct.stv* %196, i32 %197, i32 23)
  %199 = load %struct.stv*, %struct.stv** %3, align 8
  %200 = load i32, i32* @RSTV0910_P2_TSINSDELL, align 4
  %201 = call i32 @write_reg(%struct.stv* %199, i32 %200, i32 255)
  %202 = load %struct.stv*, %struct.stv** %3, align 8
  %203 = call i32 @init_diseqc(%struct.stv* %202)
  store i32 0, i32* %2, align 4
  br label %204

204:                                              ; preds = %63, %20, %14
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i64 @read_reg(%struct.stv*, i32, i32*) #1

declare dso_local i32 @write_reg(%struct.stv*, i32, i32) #1

declare dso_local i32 @set_mclock(%struct.stv*, i32) #1

declare dso_local i32 @init_diseqc(%struct.stv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
