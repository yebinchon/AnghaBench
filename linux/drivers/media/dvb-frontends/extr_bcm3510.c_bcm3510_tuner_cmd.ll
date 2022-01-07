; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_tuner_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_bcm3510.c_bcm3510_tuner_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }
%struct.bcm3510_hab_cmd_tune = type { i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@BITS_8 = common dso_local global i8* null, align 8
@BITS_3 = common dso_local global i8* null, align 8
@CMD_TUNE = common dso_local global i32 0, align 4
@MSGID_TUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*, i32, i32, i32)* @bcm3510_tuner_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_tuner_cmd(%struct.bcm3510_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bcm3510_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm3510_hab_cmd_tune, align 8
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 32)
  %11 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 0
  store i32 16, i32* %11, align 8
  %12 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 1
  store i32 16, i32* %13, align 4
  %14 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 2
  store i32 64, i32* %14, align 8
  %15 = load i8*, i8** @BITS_8, align 8
  %16 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i8* %15, i8** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = or i32 128, %21
  %23 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load i8*, i8** @BITS_8, align 8
  %28 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i8* %27, i8** %32, align 8
  %33 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load i8*, i8** @BITS_3, align 8
  %38 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i8* %37, i8** %42, align 8
  %43 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 32, i32* %46, align 8
  %47 = load i8*, i8** @BITS_3, align 8
  %48 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i8* %47, i8** %52, align 8
  %53 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 64, i32* %66, align 8
  %67 = load i8*, i8** @BITS_8, align 8
  %68 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i8* %67, i8** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 3
  %75 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load i8*, i8** @BITS_8, align 8
  %80 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 5
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i8* %79, i8** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 7
  %87 = shl i32 %86, 5
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 2
  %90 = or i32 %87, %89
  %91 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 5
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = load i8*, i8** @BITS_3, align 8
  %96 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 6
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i8* %95, i8** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %101, 6
  %103 = and i32 %102, 223
  %104 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 6
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 8
  %108 = load i8*, i8** @BITS_3, align 8
  %109 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 7
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  store i8* %108, i8** %113, align 8
  %114 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 7
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 7
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  %124 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 7
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 64, i32* %127, align 8
  %128 = load i8*, i8** @BITS_8, align 8
  %129 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  store i8* %128, i8** %133, align 8
  %134 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 128, i32* %137, align 8
  %138 = load i8*, i8** @BITS_8, align 8
  %139 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 9
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  store i8* %138, i8** %143, align 8
  %144 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 9
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 16, i32* %147, align 8
  %148 = load i8*, i8** @BITS_3, align 8
  %149 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 10
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  store i8* %148, i8** %153, align 8
  %154 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 10
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i32 32, i32* %157, align 8
  %158 = load i8*, i8** @BITS_3, align 8
  %159 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 11
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  store i8* %158, i8** %163, align 8
  %164 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 11
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 11
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  %174 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 11
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 64, i32* %177, align 8
  %178 = load i8*, i8** @BITS_8, align 8
  %179 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 12
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 3
  store i8* %178, i8** %183, align 8
  %184 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i64 12
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store i32 42, i32* %187, align 8
  %188 = load i8*, i8** @BITS_8, align 8
  %189 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i64 13
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  store i8* %188, i8** %193, align 8
  %194 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 13
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  store i32 142, i32* %197, align 8
  %198 = load i8*, i8** @BITS_3, align 8
  %199 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 14
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 3
  store i8* %198, i8** %203, align 8
  %204 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 14
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  store i32 0, i32* %207, align 8
  %208 = load i8*, i8** @BITS_3, align 8
  %209 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 15
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 3
  store i8* %208, i8** %213, align 8
  %214 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 15
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 15
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  store i32 1, i32* %223, align 8
  %224 = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, %struct.bcm3510_hab_cmd_tune* %9, i32 0, i32 3
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 15
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store i32 64, i32* %227, align 8
  %228 = load %struct.bcm3510_state*, %struct.bcm3510_state** %5, align 8
  %229 = load i32, i32* @CMD_TUNE, align 4
  %230 = load i32, i32* @MSGID_TUNE, align 4
  %231 = bitcast %struct.bcm3510_hab_cmd_tune* %9 to i32*
  %232 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %228, i32 %229, i32 %230, i32* %231, i32 32, i32* null, i32 0)
  ret i32 %232
}

declare dso_local i32 @memset(%struct.bcm3510_hab_cmd_tune*, i32, i32) #1

declare dso_local i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state*, i32, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
