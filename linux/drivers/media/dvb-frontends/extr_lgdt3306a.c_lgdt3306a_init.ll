; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3306a_state* }
%struct.lgdt3306a_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad xtalMHz=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @lgdt3306a_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.lgdt3306a_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %7, align 8
  store %struct.lgdt3306a_state* %8, %struct.lgdt3306a_state** %3, align 8
  %9 = call i32 @dbg_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %11 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %10, i32 1, i32 0, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @lg_chkerr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %235

16:                                               ; preds = %1
  %17 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %18 = call i32 @lgdt3306a_set_inversion_auto(%struct.lgdt3306a_state* %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @lg_chkerr(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %235

23:                                               ; preds = %16
  %24 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %25 = call i32 @lgdt3306a_set_inversion(%struct.lgdt3306a_state* %24, i32 1)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @lg_chkerr(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %235

30:                                               ; preds = %23
  %31 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %32 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %31, i32 4, i32 7, i32 1)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @lg_chkerr(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %235

37:                                               ; preds = %30
  %38 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %39 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %38, i32 4, i32 2, i32 0)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @lg_chkerr(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %235

44:                                               ; preds = %37
  %45 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %46 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %45, i32 4, i32 3, i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @lg_chkerr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %235

51:                                               ; preds = %44
  %52 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %53 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %52, i32 5, i32 6, i32 0)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @lg_chkerr(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %235

58:                                               ; preds = %51
  %59 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %60 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 24
  br i1 %64, label %65, label %111

65:                                               ; preds = %58
  %66 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %67 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %66, i32 5, i32* %4)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @lg_chkerr(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %235

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, 192
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, 37
  store i32 %76, i32* %4, align 4
  %77 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %77, i32 5, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @lg_chkerr(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %235

84:                                               ; preds = %72
  %85 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %86 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %85, i32 6, i32 100)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @lg_chkerr(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %235

91:                                               ; preds = %84
  %92 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %93 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %92, i32 13, i32* %4)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @lg_chkerr(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %235

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = and i32 %99, 192
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, 24
  store i32 %102, i32* %4, align 4
  %103 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %103, i32 13, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @lg_chkerr(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %235

110:                                              ; preds = %98
  br label %172

111:                                              ; preds = %58
  %112 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %113 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 25
  br i1 %117, label %118, label %164

118:                                              ; preds = %111
  %119 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %120 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %119, i32 5, i32* %4)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i64 @lg_chkerr(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %235

125:                                              ; preds = %118
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, 192
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, 37
  store i32 %129, i32* %4, align 4
  %130 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %130, i32 5, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i64 @lg_chkerr(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %235

137:                                              ; preds = %125
  %138 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %139 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %138, i32 6, i32 100)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i64 @lg_chkerr(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %235

144:                                              ; preds = %137
  %145 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %146 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %145, i32 13, i32* %4)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i64 @lg_chkerr(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %235

151:                                              ; preds = %144
  %152 = load i32, i32* %4, align 4
  %153 = and i32 %152, 192
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = or i32 %154, 25
  store i32 %155, i32* %4, align 4
  %156 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %156, i32 13, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i64 @lg_chkerr(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %235

163:                                              ; preds = %151
  br label %171

164:                                              ; preds = %111
  %165 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %166 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %164, %163
  br label %172

172:                                              ; preds = %171, %110
  %173 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %174 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %173, i32 16, i32 52)
  store i32 %174, i32* %5, align 4
  %175 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %176 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %175, i32 17, i32 0)
  store i32 %176, i32* %5, align 4
  %177 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %178 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %177, i32 20, i32 0)
  store i32 %178, i32* %5, align 4
  %179 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %180 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %179, i32 4156, i32* %4)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %4, align 4
  %182 = and i32 %181, 15
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = or i32 %183, 32
  store i32 %184, i32* %4, align 4
  %185 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %185, i32 4156, i32 %186)
  store i32 %187, i32* %5, align 4
  %188 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %189 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %188, i32 4157, i32* %4)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %4, align 4
  %191 = and i32 %190, 252
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = or i32 %192, 3
  store i32 %193, i32* %4, align 4
  %194 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %194, i32 4157, i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %198 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %197, i32 4150, i32* %4)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %4, align 4
  %200 = and i32 %199, 240
  store i32 %200, i32* %4, align 4
  %201 = load i32, i32* %4, align 4
  %202 = or i32 %201, 12
  store i32 %202, i32* %4, align 4
  %203 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %203, i32 4150, i32 %204)
  store i32 %205, i32* %5, align 4
  %206 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %207 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %206, i32 8479, i32* %4)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %4, align 4
  %209 = and i32 %208, 239
  store i32 %209, i32* %4, align 4
  %210 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %210, i32 8479, i32 %211)
  store i32 %212, i32* %5, align 4
  %213 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %214 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %213, i32 10313, i32* %4)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %4, align 4
  %216 = and i32 %215, 239
  store i32 %216, i32* %4, align 4
  %217 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state* %217, i32 10313, i32 %218)
  store i32 %219, i32* %5, align 4
  %220 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %221 = call i32 @lgdt3306a_set_vsb(%struct.lgdt3306a_state* %220)
  store i32 %221, i32* %5, align 4
  %222 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %223 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %224 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %223, i32 0, i32 0
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @lgdt3306a_mpeg_mode(%struct.lgdt3306a_state* %222, i32 %227)
  store i32 %228, i32* %5, align 4
  %229 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %230 = call i32 @lgdt3306a_mpeg_tristate(%struct.lgdt3306a_state* %229, i32 1)
  store i32 %230, i32* %5, align 4
  %231 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %3, align 8
  %232 = call i32 @lgdt3306a_sleep(%struct.lgdt3306a_state* %231)
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %5, align 4
  %234 = call i64 @lg_chkerr(i32 %233)
  br label %235

235:                                              ; preds = %172, %162, %150, %143, %136, %124, %109, %97, %90, %83, %71, %57, %50, %43, %36, %29, %22, %15
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @dbg_info(i8*) #1

declare dso_local i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state*, i32, i32, i32) #1

declare dso_local i64 @lg_chkerr(i32) #1

declare dso_local i32 @lgdt3306a_set_inversion_auto(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @lgdt3306a_set_inversion(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i32 @lgdt3306a_write_reg(%struct.lgdt3306a_state*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @lgdt3306a_set_vsb(%struct.lgdt3306a_state*) #1

declare dso_local i32 @lgdt3306a_mpeg_mode(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @lgdt3306a_mpeg_tristate(%struct.lgdt3306a_state*, i32) #1

declare dso_local i32 @lgdt3306a_sleep(%struct.lgdt3306a_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
